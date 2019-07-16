Extension { #name : #CSNUIHeading6 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading6 class >> htmlCanHandle: anElement [
	^ anElement name = 'h6'
]
