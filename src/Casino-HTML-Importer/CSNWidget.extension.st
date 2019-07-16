Extension { #name : #CSNWidget }

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlCanHandle: anElement [
	^ false
]

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlCreateWidgetFrom: anElement [
	^ (self allSubclasses
		detect: [ :first | first htmlCanHandle: anElement ]
		ifNone: [ ^ CSNUIContainer htmlNewInstanceFor: anElement ])
		silverNewInstanceFor: anElement
]

{ #category : #'*Casino-HTML-Importer' }
CSNWidget class >> htmlNewInstanceFor: anElement [
	^ self new
		source: anElement;
		name: anElement name;
		yourself
]
