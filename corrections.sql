ALTER TABLE Product DROP COLUMN IF EXISTS Image;

CREATE TABLE Image (
    ImageID SERIAL PRIMARY KEY,
    ProductID INT REFERENCES Product(ProductID),
    ImageURL TEXT NOT NULL,
    IsMainImage BOOLEAN DEFAULT FALSE
);

CREATE INDEX idx_image_product ON Image (ProductID);


INSERT INTO Image (ProductID, ImageURL, IsMainImage)
VALUES
    (1, 'https://example.com/image1.jpg', TRUE),
    (1, 'https://example.com/image1-1.jpg', FALSE),
    (3, 'https://example.com/image3.jpg', TRUE),
    (4, 'https://example.com/image4.jpg', FALSE),
    (5, 'https://example.com/image5.jpg', TRUE),
    (6, 'https://example.com/image6.jpg', FALSE),
    (7, 'https://example.com/image7.jpg', TRUE),
    (8, 'https://example.com/image8.jpg', FALSE),
    (9, 'https://example.com/image9.jpg', TRUE),
    (10, 'https://example.com/image10.jpg', FALSE);
