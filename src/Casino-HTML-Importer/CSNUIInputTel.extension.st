Extension { #name : #CSNUIInputTel }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputTel class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'tel' ]
]
