Extension { #name : #CSNUILink }

{ #category : #'*Casino-HTML-Importer' }
CSNUILink class >> htmlCanHandle: anElement [
	^ anElement name = 'a'
]
