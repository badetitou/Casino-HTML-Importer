Extension { #name : #CSNUIHeading5 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading5 class >> htmlCanHandle: anElement [
	^ anElement name = 'h5'
]
