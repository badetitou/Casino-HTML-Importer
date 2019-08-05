Extension { #name : #CSNWidget }

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlCanHandle: anElement [
	^ false
]

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlCreateWidgetFrom: anElement [
	^ (self allSubclasses
		detect: [ :first | first htmlCanHandle: anElement ]
		ifNone: [ ^ CSNContainer htmlNewInstanceFor: anElement ])
		htmlNewInstanceFor: anElement
]

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlNewInstanceFor: anElement [
	^ self new
		source: anElement;
		name: anElement name;
		yourself
]
