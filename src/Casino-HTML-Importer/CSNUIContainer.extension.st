Extension { #name : #CSNUIContainer }

{ #category : #'*Casino-HTML-Importer' }
CSNUIContainer class >> htmlCanHandle: anElement [
	^ anElement name = 'div'
]
