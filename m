Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF56A6E8EFF
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRB9-00082a-Ov;
	Thu, 20 Apr 2023 10:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRB8-00082M-KB
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ybte8ln4cL1imogQbfLUc6IIuAFaJLWmv8LuzJpUUJE=; b=L9nq+BpT27hnISXc2uK8gyMLEg
 9AMcSKReO82T/P73r29QnTY9tkFY08TTrpAo7qTc058Bp8glP4bWtoogasDIuyaU3XfER6dXt9EF/
 N1YjK2pHuJqmjFJZ0r9FRCy4t7SBzCWH68xNu3+Mh7AHpgyGhm0gaVWcooR4AFbIVn9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ybte8ln4cL1imogQbfLUc6IIuAFaJLWmv8LuzJpUUJE=; b=R8qG/mEEpHO0zSTs8R/tlOwlbE
 WD+Vcd9I7X+Ldwuoc19T89v72Fj6e73U4/zqaGSAVmySiG2x9z1JG/vOzn42K3dMSGVt86v8l4+2Z
 h+jz+uZmX/790avkfsyqu9DSHlYUQoYXirjW5fznFhNaJU0B7ac12X8bOhOli1SPjmhU=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRB8-00DROf-OM for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:15 +0000
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-3f17eb6b10fso3445465e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985174; x=1684577174;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ybte8ln4cL1imogQbfLUc6IIuAFaJLWmv8LuzJpUUJE=;
 b=J75DRMtqkp9dqzOL7Thnr0yo2AK6P3+wCzoBkRyphGflEvR+b5qutva4NL67ITNDMa
 SKbzx77k38NpgjucldZMk+v69YSeDA85EQVPw6MCV/EqXsNrYLESDzHBFV9dZxLr98JE
 CodkptGa020EtkumcbXxIadQfpfjz3Gb5LvXsvimq0bOO6OmOactZGfJKMySJiHf+wdi
 CgetZmCuQ9gPzrz3ZLjik4X4vd1sTgQtgr0kFet8iJdPOpgE329g+7hSwr0GXn85H6H+
 yG3A9gI11in6t/T8NxgAuxcPsLQUyg+JsblYvPfSdE9adWRKwSXlUPPaMRFv0ZZKvMEu
 tmzQ==
X-Gm-Message-State: AAQBX9fydKAYTcDgq1tINw0BgkcwUUH3X5sIrg5GsTFc436wrpZl9Mfz
 mklW2ZQ4R8BtVwPfxzfBZOmMaR0KsLjL4IIi
X-Google-Smtp-Source: AKy350ZrFHrJO95XpjLsqvNhaT3Lj7em6PpVK0jNKwO81XYdkMaIRUgqMSWWRox8APZBVDphzDkYwQ==
X-Received: by 2002:adf:f384:0:b0:2f2:9198:f0f with SMTP id
 m4-20020adff384000000b002f291980f0fmr833210wro.10.1681985174142; 
 Thu, 20 Apr 2023 03:06:14 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:13 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:59 +0200
Message-Id: <20230420100501.32981-21-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230420100501.32981-1-jth@kernel.org>
References: <20230420100501.32981-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> Just
 like for bio_add_pages() add a no-fail variant for bio_add_folio().
 Signed-off-by:
 Johannes Thumshirn <johannes.thumshirn@wdc.com> --- block/bio.c | 8 ++++++++
 include/linux/bio.h | 1 + 2 files changed, 9 insertions(+) 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRB8-00DROf-OM
Subject: [Jfs-discussion] [PATCH v4 20/22] block: add __bio_add_folio
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, linux-mm@kvack.org, shaggy@kernel.org,
 johannes.thumshirn@wdc.com, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-fsdevel@vger.kernel.org, dm-devel@redhat.com,
 hare@suse.de, dsterba@suse.com, linux-raid@vger.kernel.org, song@kernel.org,
 hch@lst.de, linux-btrfs@vger.kernel.org, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Just like for bio_add_pages() add a no-fail variant for bio_add_folio().

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/bio.c         | 8 ++++++++
 include/linux/bio.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index fd11614bba4d..f3a3524b53e4 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1138,6 +1138,14 @@ int bio_add_page(struct bio *bio, struct page *page,
 }
 EXPORT_SYMBOL(bio_add_page);
 
+void __bio_add_folio(struct bio *bio, struct folio *folio, size_t len,
+		     size_t off)
+{
+	WARN_ON_ONCE(len > UINT_MAX);
+	WARN_ON_ONCE(off > UINT_MAX);
+	__bio_add_page(bio, &folio->page, len, off);
+}
+
 /**
  * bio_add_folio - Attempt to add part of a folio to a bio.
  * @bio: BIO to add to.
diff --git a/include/linux/bio.h b/include/linux/bio.h
index 0f8a8d7a6384..99fa832db836 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -473,6 +473,7 @@ int bio_add_zone_append_page(struct bio *bio, struct page *page,
 			     unsigned int len, unsigned int offset);
 void __bio_add_page(struct bio *bio, struct page *page,
 		unsigned int len, unsigned int off);
+void __bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter);
 void bio_iov_bvec_set(struct bio *bio, struct iov_iter *iter);
 void __bio_release_pages(struct bio *bio, bool mark_dirty);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
