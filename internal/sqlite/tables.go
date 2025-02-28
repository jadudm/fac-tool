package sqlite

import (
	"context"
	"database/sql"
	_ "embed"

	_ "github.com/mattn/go-sqlite3"

	"go.uber.org/zap"
)

//go:embed schema.sql
var ddl string

func CreateTables(db_name string) (*sql.DB, *Queries, error) {
	ctx := context.Background()

	zap.L().Info("creating database", zap.String("filename", db_name))

	db, err := sql.Open("sqlite3", db_name)
	if err != nil {
		zap.L().Error("could not create database file", zap.Error(err))
		return nil, nil, err
	}

	// create tables
	if _, err := db.ExecContext(ctx, ddl); err != nil {
		zap.L().Error("could not create tables", zap.Error(err))
		return nil, nil, err
	}

	return db, New(db), nil
}
