Class {
	#name : #CSNHTMLFactory,
	#superclass : #CSNWidgetFactory,
	#category : #'Casino-HTML-Importer'
}

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createAttributeFor: aWidget from: anElement [
	^  self model
				silentlyAdd: (CSNAttribute silverCreateAttributeFor: aWidget from: anElement)
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createAttributesFor: widget from: anElement [
	anElement
		attributeNodesDo: [ :attribute | 
			self model
				silentlyAdd: (CSNAttribute silverCreateAttributeFor: widget from: attribute) ]
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createPageFrom: aDocumentXML [
	^ self model silentlyAdd: (CSNPage new name: ((aDocumentXML nodes anyOne attributeNodeAt: 'x:Class') value substrings: '.') last ; yourself)
]

{ #category : #'as yet unclassified' }
CSNHTMLFactory >> createWidgetFrom: anElement [
	^ self model
		silentlyAdd:
			(CSNWidget silverCreateWidgetFrom: anElement)
]
