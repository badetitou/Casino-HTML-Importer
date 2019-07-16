Extension { #name : #CSNUIValue }

{ #category : #'*Casino-HTML-Importer' }
CSNUIValue class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'value'
]
