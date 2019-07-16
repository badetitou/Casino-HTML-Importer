Extension { #name : #CSNUISrc }

{ #category : #'*Casino-HTML-Importer' }
CSNUISrc class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'src'
]
