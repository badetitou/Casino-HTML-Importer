"
sourceModel := XMLDOMParser parseFileNamed: 'D:\Developpement\html\test\test.html'.
htmlModel := CSNMooseModel new.
CSNSilverlightImporter new sourceModel: sourceModel; createModelIn: htmlModel.
htmlModel name: 'html'.
htmlModel.
"
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
	factory := CSNHTMLFactory new model: model; importer: self; addVisitorImporter: CSNModelImporterHTMLVisitor new; yourself
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
