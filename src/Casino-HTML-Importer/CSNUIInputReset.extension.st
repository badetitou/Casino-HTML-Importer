Extension { #name : #CSNUIInputReset }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputReset class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'reset' ]
]
