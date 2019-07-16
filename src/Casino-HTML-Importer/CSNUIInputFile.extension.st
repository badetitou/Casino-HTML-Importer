Extension { #name : #CSNUIInputFile }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputFile class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'file' ]
]
