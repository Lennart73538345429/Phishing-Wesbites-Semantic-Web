# Phisphing Website 


**Author:** Lennart Zipfel, INB-3  
**Dataset:** [UCI Phishing Websites Dataset](https://archive.ics.uci.edu/dataset/327/phishing+websites)  
**Reference Paper:** [An Assessment of Features Related to Phishing Using Machine Learning Algorithms](https://www.semanticscholar.org/paper/0c0ff58063f4e078714ea74f112bc709ba9fed06)  

# This is the README for the Phisphing website project.

## Requirements
 please run the following imports in requrements.txt
 *pip install -r requirements.txt*

## Quickstart
git clone https://github.com/Lennart73538345429/Phishing-Wesbites-Semantic-Web
pip install -r requirements.txt
python main.py

## Docker 
run the follwing command *sudo docker compose -f docker-compose.yml up -d*

- to use the SPARQL Query Editor just go to http://localhost:8898/sparql

## Example Queries for Interactive SQL
*
SPARQL SELECT DISTINCT ?class (COUNT(?s) AS ?count) FROM <https://gitlab.dit.htwk-leipzig.de/semantic-web-project-25/mind> WHERE { ?s a ?class } GROUP BY ?class ORDER BY DESC(?count);
*


## Overview

 This project is designed to provide a comprehensive overview of the Phisphing website dataset in the paper.

The dataset is available at the UCI Machine Learning Repository, and this project aims to facilitate its exploration and analysis.

- **Dataset exploration** (statistical analysis & correlations)  
- **Ontology modeling in RDF/OWL** (semantic enrichment of phishing features)  
- **SPARQL queries** for knowledge extraction  
- **Machine learning classification** (Support Vector Machine)  
- **Spark SQL evaluation** for query comparison  


## Files
Virtusoso Directory
├── phishing_websites.csv  # Original dataset from UCI Machine Learning Repository      
└── README.md               # This file

## Ontology & RDF Graph  
- **Ontology**: `onto.ttl`  
  - Defines classes, properties, and relationships for phishing features.  
  - Uses OWL for semantic enrichment.

                     
- Defined Feture categories (the 32 features are grouped into 4 categories):
  - **URL Features**  
  - **DNS Features**  
  - **Content Features**  
  - **Statistical Features**  

- Created RDF instances for:  
  - Websites (`ex:Website_n`)  
  - Features (`ex:FeatureType_*`)  
  - Feature values (`ex:ScoreValue_*`)  

## Conclusions
- **Semantic modeling (RDF/OWL)** helps to group phishing indicators into categories and enables **SPARQL reasoning**.  
- **Machine learning (SVM)** achieves high classification accuracy for phishing detection.  
- **Spark queries** validate ML results in a scalable, distributed way.  