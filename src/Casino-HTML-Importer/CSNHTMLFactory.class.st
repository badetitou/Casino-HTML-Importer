Class {
	#name : #CSNHTMLFactory,
	#superclass : #CSNWidgetFactory,
	#category : #'Casino-HTML-Importer'
}

{ #category : #creating }
CSNHTMLFactory >> createAttributeFor: aWidget from: anElement [
	^ CSNAttribute newFrom: anElement for: aWidget withImporters: visitorImporters
]

{ #category : #creating }
CSNHTMLFactory >> createAttributesFor: widget from: anElement [
	anElement attributeNodesDo: [ :attribute | self createAttributeFor: widget from: attribute ]
]

{ #category : #creating }
CSNHTMLFactory >> createPageFrom: aDocumentXML [
	^ self create: CSNPage
]

{ #category : #creating }
CSNHTMLFactory >> createWidgetFrom: anElement [
	^ (CSNWidget newFrom: anElement for: nil withImporters: visitorImporters) ifNil: [ self create: CSNContainer ]
]
