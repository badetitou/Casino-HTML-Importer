Extension { #name : #CSNUIMin }

{ #category : #'*Casino-HTML-Importer' }
CSNUIMin class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'min'
]
