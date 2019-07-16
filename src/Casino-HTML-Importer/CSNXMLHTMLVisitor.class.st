Class {
	#name : #CSNXMLHTMLVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'importer',
		'factory',
		'parentWidget'
	],
	#category : #'Casino-HTML-Importer'
}

{ #category : #accessing }
CSNXMLHTMLVisitor >> factory [
	^ factory
]

{ #category : #accessing }
CSNXMLHTMLVisitor >> factory: anObject [
	factory := anObject
]

{ #category : #accessing }
CSNXMLHTMLVisitor >> importer [
	^ importer
]

{ #category : #accessing }
CSNXMLHTMLVisitor >> importer: anObject [
	importer := anObject
]

{ #category : #accessing }
CSNXMLHTMLVisitor >> parentWidget [
	^ parentWidget 
]

{ #category : #accessing }
CSNXMLHTMLVisitor >> parentWidget: aWidget [
	parentWidget := aWidget
]

{ #category : #visiting }
CSNXMLHTMLVisitor >> shouldImportElement: anElement [
	^ anElement name ~= 'UserControl.Resources'
	"	and: [ (anElement name endsWith: 'Template') not ]"
]

{ #category : #visiting }
CSNXMLHTMLVisitor >> visitDocument: aDocument [
	self parentWidget: (self factory createPageFrom: aDocument).
	^  (aDocument nodes flatCollect: #nodes) do: [:aNode | aNode acceptNodeVisitor: self ]
]

{ #category : #visiting }
CSNXMLHTMLVisitor >> visitElement: anElement [
	| widget |
	(self shouldImportElement: anElement)
		ifFalse: [ ^ self ].
	self parentWidget isContainer
		ifTrue: [ "A leaf cannot add a widget"
			widget := self factory createWidgetFrom: anElement.
			self parentWidget addWidget: widget.
			self factory createAttributesFor: widget from: anElement.
			widget checkAttributes.
			^ self clone parentWidget: widget; visitNodeWithElements: anElement ]
		ifFalse:
			[ "If a leaf have children nodes. They probably are attributes represented by a node
			ex: a tooltip for a button  "
			self parentWidget
				addAttribute: (self factory createAttributeFor: widget from: anElement).
			^ nil ]
]

{ #category : #visiting }
CSNXMLHTMLVisitor >> visitNodeWithElements: aNodeWithElements [
	(aNodeWithElements hasChildren and: [ self parentWidget isContainer ])
		ifTrue:
			[ aNodeWithElements nodesDo: [ :each | each acceptNodeVisitor: self ] ].
	^ aNodeWithElements
]
