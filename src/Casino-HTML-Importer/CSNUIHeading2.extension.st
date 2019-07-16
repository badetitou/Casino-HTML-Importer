Extension { #name : #CSNUIHeading2 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading2 class >> htmlCanHandle: anElement [
	^ anElement name = 'h2'
]
