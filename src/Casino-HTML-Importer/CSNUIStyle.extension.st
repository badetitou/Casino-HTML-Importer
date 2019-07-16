Extension { #name : #CSNUIStyle }

{ #category : #'*Casino-HTML-Importer' }
CSNUIStyle class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'style'
]
