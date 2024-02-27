This Project for Showcasing following:

1. Github Actions
2. Harness
3. Helm 
4. AKS

##### build the project

    ./gradlew build

##### build Docker image called java-app. Execute from root

    docker build -t java-app .
    
##### push image to repo 

    docker tag java-app demo-app:java-1.0
    
