## Agregar Etapas en Jenkinsfile

Editarás nuevamente el archivo `Jenkinsfile` para agregar más etapas al pipeline.

* Abre Github y navega hasta el archivo [`Jenkinsfile`](https://[[HOST_SUBDOMAIN]]-9876-[[KATACODA_HOST]].environments.katacoda.com/#jenkinsfile) del repositorio Pet Clinic.

* Para editar el archivo, has click en el **ícono de lapiz** en la parte superior derecha del archivo.

* Agrega las siguientes etapas al pipeline.

**1. Aprobación para iniciar el despliegue en el ambiente de Producción** 

* Debajo del bloque `stage('End to End Tests'){..}`, agrega las siguientes líneas:

  <pre class="file" data-target="clipboard">
  stage('Decide Deploy to Prod'){
      when {
          branch 'master'
      }
      agent none
      steps {
          input message: 'Deploy to Prod?'
      }            
  }
  </pre>

* Deberá quedar similar a la siguiente imagen.

  ![Jenkinsfile Decide Deploy Prod](./assets/jenkinsfile-decide-deploy-prod.png)

**2. Desplegar en Producción** 

* El despliegue consisten en detener el contenedor anterior y ejecutar la nueva versión.

* Debajo del bloque `stage('Decide Deploy to Prod'){..}`, agrega las siguientes líneas:

  <pre class="file" data-target="clipboard">
  stage('Deploy Prod'){
      when {
          branch 'master'
      }
      agent any
      steps {
          sh '''
              for runName in `docker ps | grep "alpine-petclinic-prod" | awk '{print $1}'`
              do
                  if [ "$runName" != "" ]
                  then
                      docker stop $runName
                  fi
              done
              docker run --name alpine-petclinic-prod --rm -d -p 9968:8080 $TAG_NAME
          '''
      }
  }   
  </pre>

* Deberá quedar similar a la siguiente imagen.

  ![Jenkinsfile End to End Test](./assets/jenkinsfile-deploy-prod.png)

## Probar el pipeline

* En la sección **Commit changes**, ingresa un comentario, por ejemplo `Pipeline: prod stages`{{copy}}

* Realiza commit directamente en la rama `master`.

* Ingresa a Jenkins para ver qué está sucediendo <a href="https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/blue/organizations/jenkins/pet-clinic/activity/" target="jenkins">https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/blue/organizations/jenkins/pet-clinic/activity/</a>

* Observarás que está en progreso la ejecución de un pipeline asociado al commit en la rama `master`.

* Haz click en la ejecución para revisar su detalle y espera a que se detenga en la etapa **Decide Deploy to Test**.

* Haz click en el botón **Proceed** para continuar con la ejecución.

* La ejecución continuará, espera que finalice en la etapa **Decide Deploy to Prod**.

  ![Pipeline Decide Deploy Prod](./assets/pipeline-decide-deploy-prod.png)

* Haz click en el botón **Proceed** para continuar con la ejecución.

* La ejecución continuará, espera que finalice en la etapa **Deploy to Prod**.

  ![Pipeline Deploy Prod](./assets/pipeline-deploy-prod.png)