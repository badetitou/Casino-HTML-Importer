Extension { #name : #CSNUISize }

{ #category : #'*Casino-HTML-Importer' }
CSNUISize class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'size'
]
