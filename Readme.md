# Phisphing Website 


**Author:** Lennart Zipfel, INB-3  
**Dataset:** [UCI Phishing Websites Dataset](https://archive.ics.uci.edu/dataset/327/phishing+websites)  
**Reference Paper:** [An Assessment of Features Related to Phishing Using Machine Learning Algorithms](https://www.semanticscholar.org/paper/0c0ff58063f4e078714ea74f112bc709ba9fed06)  

# This is the README for the Phisphing website project.

## Requirements
 please run the following imports in requrements.txt
 *pip install -r requirements.txt*

## Overview

 This project is designed to provide a comprehensive overview of the Phisphing website dataset in the paper.

The dataset is available at the UCI Machine Learning Repository, and this project aims to facilitate its exploration and analysis.

- **Dataset exploration** (statistical analysis & correlations)  
- **Ontology modeling in RDF/OWL** (semantic enrichment of phishing features)  
- **SPARQL queries** for knowledge extraction  
- **Machine learning classification** (Support Vector Machine)  
- **Spark SQL evaluation** for query comparison  


## Files
├── phishing_websites.csv  # Original dataset from UCI Machine Learning Repository
├── onto.ttl                # Base ontology schema
├── fertig.ttl              # RDF instances generated from dataset
├── August.ttl              # Merged ontology + data
├── 06.05.ttl               # Final ontology export
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