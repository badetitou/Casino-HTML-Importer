Extension { #name : #CSNUIRequired }

{ #category : #'*Casino-HTML-Importer' }
CSNUIRequired class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'required'
]
