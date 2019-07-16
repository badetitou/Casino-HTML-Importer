Class {
	#name : #CSNHTMLImporter,
	#superclass : #CSNWebModel,
	#instVars : [
		'visitor'
	],
	#category : #'Casino-HTML-Importer'
}

{ #category : #api }
CSNHTMLImporter >> createFactory [
	factory := CSNHTMLFactory new model: model; importer: self; yourself
]

{ #category : #api }
CSNHTMLImporter >> import [
	visitor := CSNXMLHTMLVisitor new importer: self; factory: self factory; yourself.
	sourceModel acceptNodeVisitor: visitor 
]

{ #category : #api }
CSNHTMLImporter >> preImport [
	super preImport
]
