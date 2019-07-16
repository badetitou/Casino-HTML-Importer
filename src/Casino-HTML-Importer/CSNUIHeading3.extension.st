Extension { #name : #CSNUIHeading3 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading3 class >> htmlCanHandle: anElement [
	^ anElement name = 'h3'
]
