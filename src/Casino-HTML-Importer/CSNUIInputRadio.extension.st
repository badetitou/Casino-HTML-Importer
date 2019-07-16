Extension { #name : #CSNUIInputRadio }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputRadio class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'radio' ]
]
