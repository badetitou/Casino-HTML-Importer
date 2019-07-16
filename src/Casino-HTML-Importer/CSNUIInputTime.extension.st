Extension { #name : #CSNUIInputTime }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputTime class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'time' ]
]
