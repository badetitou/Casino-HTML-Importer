Extension { #name : #CSNUISelect }

{ #category : #'*Casino-HTML-Importer' }
CSNUISelect class >> htmlCanHandle: anElement [
	^ anElement name = 'select'
]
