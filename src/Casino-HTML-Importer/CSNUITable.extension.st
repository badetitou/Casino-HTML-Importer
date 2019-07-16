Extension { #name : #CSNUITable }

{ #category : #'*Casino-HTML-Importer' }
CSNUITable class >> htmlCanHandle: anElement [
	^ anElement name = 'table'
]
