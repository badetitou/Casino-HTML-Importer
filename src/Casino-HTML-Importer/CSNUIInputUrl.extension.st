Extension { #name : #CSNUIInputUrl }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputUrl class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'url' ]
]
