Extension { #name : #CSNUITextarea }

{ #category : #'*Casino-HTML-Importer' }
CSNUITextarea class >> htmlCanHandle: anElement [
	^ anElement name = 'textarea'
]
