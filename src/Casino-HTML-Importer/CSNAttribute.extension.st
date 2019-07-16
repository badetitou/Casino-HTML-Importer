Extension { #name : #CSNAttribute }

{ #category : #'*Casino-HTML-Importer' }
CSNAttribute class >> htmlCanHandle: anElement for: aWidget [
	^ false
]

{ #category : #'*Casino-HTML-Importer' }
CSNAttribute class >> htmlCreateAttributeFor: aWidget from: anElement [
	^ (self allSubclasses
		detect: [ :first | first silverCanHandle: anElement for: aWidget ]
		ifNone: [ ^ CSNAttribute silverNewInstanceFor: aWidget from: anElement ])
		silverNewInstanceFor: aWidget from: anElement
]

{ #category : #'*Casino-HTML-Importer' }
CSNAttribute class >> htmlNewInstanceFor: aWidget from: anElement [
	^ self new
		name: anElement name;
		attributeValue: anElement value asLowercase;
		widget: aWidget;
		yourself
]
