Extension { #name : #CSNUIParagraph }

{ #category : #'*Casino-HTML-Importer' }
CSNUIParagraph class >> htmlCanHandle: anElement [
	^ anElement name = 'p'
]
