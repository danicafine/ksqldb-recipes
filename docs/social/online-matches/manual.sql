CREATE STREAM messages (
  send_id BIGINT,
  recv_id BIGINT,
  message VARCHAR
) WITH (
  KAFKA_TOPIC = 'MESSAGES',
  VALUE_FORMAT = 'AVRO',
  PARTITIONS = 3
);

INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 1, 2, 'Hello' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 1, 3, 'Hello' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 2, 1, 'Hey there' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 1, 2, 'What''s going on?' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 3, 4, 'Hi' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 3, 4, 'Hello' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 5, 4, 'Hi' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 4, 5, 'Well hi to you too.' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 3, 4, 'I''d like to chat.' );
INSERT INTO messages ( send_id, recv_id, message ) VALUES ( 5, 4, 'Would you like to discuss event streaming with me?' );
