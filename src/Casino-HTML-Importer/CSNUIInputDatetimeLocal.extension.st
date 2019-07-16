Extension { #name : #CSNUIInputDatetimeLocal }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputDatetimeLocal class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'datetime-local' ]
]
