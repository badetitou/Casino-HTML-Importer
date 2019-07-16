Extension { #name : #CSNUIHeading1 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading1 class >> htmlCanHandle: anElement [
	^ anElement name = 'h1'
]
