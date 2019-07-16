Extension { #name : #CSNUIHeading4 }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeading4 class >> htmlCanHandle: anElement [
	^ anElement name = 'h4'
]
