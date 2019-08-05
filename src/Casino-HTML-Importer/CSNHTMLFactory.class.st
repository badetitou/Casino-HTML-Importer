Class {
	#name : #CSNHTMLFactory,
	#superclass : #CSNWidgetFactory,
	#category : #'Casino-HTML-Importer'
}

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createAttributeFor: aWidget from: anElement [
	^  self model
				silentlyAdd: (CSNAttribute htmlCreateAttributeFor: aWidget from: anElement)
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createAttributesFor: widget from: anElement [
	anElement
		attributeNodesDo: [ :attribute | 
			self model
				silentlyAdd: (CSNAttribute htmlCreateAttributeFor: widget from: attribute) ]
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createPageFrom: aDocumentXML [
	^ self create: CSNPage
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createWidgetFrom: anElement [
	^ self model
		silentlyAdd:
			(CSNWidget htmlCreateWidgetFrom: anElement)
]
