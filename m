Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C735B20C38
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Aug 2025 16:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GQnhXApHEeaNomXde+2UGoIPobhXsBu7my7S0FID5d0=; b=J+28RaApCVnwDooyP8prRi/w5V
	JSoWYmpLakX7cVEaZpip6eDWXne05qUD5E8JvjItKbZWhtKPCtQJ5lVkVbBlCFHsaDcw9dG3wjDzG
	oOp2WH/96ywnUvlQOAUtOnWXaRbFmewHLMiddIo91l6AfNmdZEAeSi0XhbpGjTrsuxsc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ulTh9-0003iK-C1;
	Mon, 11 Aug 2025 14:40:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhildenb@redhat.com>) id 1ulTh8-0003iB-5D
 for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Aug 2025 14:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K9pQ6cfOAd6CYMjiXktr++2RllUSiQ1vZU8nA2VfkG0=; b=RnyqviYuUtbRDknuynuD0eqwKt
 FnbkOPmfhu2hzq+uH1bqqTV8gfFNJmHvJUJwBhSXjBGgog0fDDlDCf5aPHpq5sdKwxFviPxK2WR0s
 BU0S3YQPH/CrgMcgYMirH4poj8KH5CzbeH6P5VBhPLC7O10PaFue+0lShP5pvgJ/hpQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K9pQ6cfOAd6CYMjiXktr++2RllUSiQ1vZU8nA2VfkG0=; b=QZQzQOH/v41BoaCbvUPjiX0URF
 m6+/MSfCzJey/5cVFTgY5HDQaeXJmIVXIbxZ3TQiYQcVX+VrHfb6jQu4d4j30KUNK9BRM4JwVZcij
 bNjSPhbaGiHXOgjWptNQev/4puhAgrAgsnmeMPmZWwsvu604xya6sqxUNab0Fm/aLMVg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ulTh6-0001D0-St for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Aug 2025 14:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1754923202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K9pQ6cfOAd6CYMjiXktr++2RllUSiQ1vZU8nA2VfkG0=;
 b=MC84uJb8smzXNAVXs6BCQKezHIhHtawMJa2Hjl5yo9xr7D7uXrZH58sU3UWTX5cVZCKmw9
 mVgmpAser0Cz/XJFGqn23Y9S6Xn8r/UPRnQ3RzHF4soTAqVAGPMiS+EiXop62H6DIXnL64
 FKmulliBEmcWPFmuBFgTePRjZIoLxls=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-151-oR0MSZyWOYSrYRfcT6jffA-1; Mon, 11 Aug 2025 10:39:58 -0400
X-MC-Unique: oR0MSZyWOYSrYRfcT6jffA-1
X-Mimecast-MFC-AGG-ID: oR0MSZyWOYSrYRfcT6jffA_1754923198
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4595cfed9f4so20642515e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 11 Aug 2025 07:39:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754923197; x=1755527997;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=K9pQ6cfOAd6CYMjiXktr++2RllUSiQ1vZU8nA2VfkG0=;
 b=mgyOkvBLDuGkSVGWhgUtWteT5VbQ98h7LYKvgwM1FKRuVcoZgxEdAi4WoH6mGWgeWi
 2UxHTeykCxQOtadKrCXA+vgY8QTm1craRnUjUfbO7U54mv7ZR4fuNrAOWZi//qDzeQti
 y/y/A5Hhx54eqo8TUEsGO2/ZHGS2MwKCFxHE9V0MdirhZiYEcvKx3GRAKjNLCpNBS70t
 5n+PfncZkYrCAAXl8BC9nvQTbUk8ysVX7lJ2t+C/I4zgb+Sfn0/+WhBPcg3ATucDD0qZ
 Jmmw0PPdnlx3x/wzCAEQ1l1iZ6PQn0tPGrirSPf2FR8PK5O9sVy1/c6JNTHoDcUQpttM
 /Dcw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWECfNLBeBidALX7hYDckI9FMwAu8ttrFGG9Z5y9EDuDtrZq33dYBpBthAjk90fYXeLdnWkw/zWegzn7Gg87Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxGIXFzq3tm4hwHqBVcv+izICUxRcZfaCp8ub8sJRRNmkL7IFCg
 M5L0Da8wimL19jBgOLH+QGVdCoXByrX5QGq7nnFty3vLoU9LHkJpR5g6DNQ1dUjeobC4WEm4Vdp
 sTaKreL9gF4eS+V1RTzTU4y6VIyQ5DtTqJv6HQDgvG897CsyG8BLdkZ85FpKDh1iAzq3sMIuo+1
 l6
X-Gm-Gg: ASbGnct6YIbhYUyZgUtD1VEB5cdlpoT3JWy7vOvW3NSVonMV5Ey8v/qIrnAJGH9FMeR
 h1PvnOEhBREKWQn1MIhrQmgfva4tLMSc61+BmVr+dtFRYpnm2QixOMBKpfWPxWhi6yX+3zRTtQi
 d/9bpshPfZhOjhR/k7k2uYHno0UORKCNLPbtk2mgoCWJuARkWrJ9rIFBnihJ3FTJGYO/we6ws1T
 1qJFtTVzqrWGeBgGNHIcseOV9iv3+QjggeFP+P1pH5X7kcxGHHFO4OE/fgc1ch87lzmqqEAAolP
 686B6+yYwwPPYX4EtOx6Cq1Pzibj9OKBKXtxYZbJzpTZl3KUtEzzfMKwA/mraOFpPADBgZ46P9N
 JUt7crchfrGXgQnixcGyfSrVa
X-Received: by 2002:a05:600c:190c:b0:43c:ec4c:25b4 with SMTP id
 5b1f17b1804b1-459f4f5292fmr128225405e9.10.1754923197488; 
 Mon, 11 Aug 2025 07:39:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeJPd1Ge6IawGRqjGvoUIijF7grEq/r+WrWgIGNnqFvFWWeyhF+SV2vqhPS2/Wm5uHjhsRGA==
X-Received: by 2002:a05:600c:190c:b0:43c:ec4c:25b4 with SMTP id
 5b1f17b1804b1-459f4f5292fmr128224855e9.10.1754923196896; 
 Mon, 11 Aug 2025 07:39:56 -0700 (PDT)
Received: from localhost
 (p200300d82f06a600a397de1d2f8bb66f.dip0.t-ipconnect.de.
 [2003:d8:2f06:a600:a397:de1d:2f8b:b66f])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-459e5868fd7sm275562255e9.18.2025.08.11.07.39.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Aug 2025 07:39:56 -0700 (PDT)
To: linux-kernel@vger.kernel.org
Date: Mon, 11 Aug 2025 16:39:48 +0200
Message-ID: <20250811143949.1117439-3-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811143949.1117439-1-david@redhat.com>
References: <20250811143949.1117439-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tV39S5WJElyrfdrN4cWtYfT3xKTzQkbrrwGbFdpGVOA_1754923198
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: At this point MIGRATEPAGE_SUCCESS is misnamed for all folio
 users, and now that we remove MIGRATEPAGE_UNMAP, it's really the only "success"
 return value that the code uses and expects. Let's just get rid of
 MIGRATEPAGE_SUCCESS completely and just use "0" for success. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ulTh6-0001D0-St
Subject: [Jfs-discussion] [PATCH v1 2/2] treewide: remove MIGRATEPAGE_SUCCESS
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
From: David Hildenbrand via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hildenbrand <david@redhat.com>
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Alistair Popple <apopple@nvidia.com>, Jan Kara <jack@suse.cz>,
 David Hildenbrand <david@redhat.com>, Jason Wang <jasowang@redhat.com>,
 linux-mm@kvack.org, Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "Michael S. Tsirkin" <mst@redhat.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>,
 Zi Yan <ziy@nvidia.com>, Josef Bacik <josef@toxicpanda.com>,
 Gregory Price <gourry@gourry.net>, Byungchul Park <byungchul@sk.com>,
 Arnd Bergmann <arnd@arndb.de>, Dave Kleikamp <shaggy@kernel.org>,
 virtualization@lists.linux.dev, Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Oscar Salvador <osalvador@suse.de>, Joshua Hahn <joshua.hahnjy@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Muchun Song <muchun.song@linux.dev>, Minchan Kim <minchan@kernel.org>,
 Benjamin LaHaise <bcrl@kvack.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
and now that we remove MIGRATEPAGE_UNMAP, it's really the only "success"
return value that the code uses and expects.

Let's just get rid of MIGRATEPAGE_SUCCESS completely and just use "0"
for success.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/powerpc/platforms/pseries/cmm.c |  2 +-
 drivers/misc/vmw_balloon.c           |  4 +--
 drivers/virtio/virtio_balloon.c      |  2 +-
 fs/aio.c                             |  2 +-
 fs/btrfs/inode.c                     |  4 +--
 fs/hugetlbfs/inode.c                 |  4 +--
 fs/jfs/jfs_metapage.c                |  8 +++---
 include/linux/migrate.h              | 10 +------
 mm/migrate.c                         | 40 +++++++++++++---------------
 mm/migrate_device.c                  |  2 +-
 mm/zsmalloc.c                        |  4 +--
 11 files changed, 36 insertions(+), 46 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/cmm.c b/arch/powerpc/platforms/pseries/cmm.c
index 5e0a718d1be7b..0823fa2da1516 100644
--- a/arch/powerpc/platforms/pseries/cmm.c
+++ b/arch/powerpc/platforms/pseries/cmm.c
@@ -545,7 +545,7 @@ static int cmm_migratepage(struct balloon_dev_info *b_dev_info,
 	/* balloon page list reference */
 	put_page(page);
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 
 static void cmm_balloon_compaction_init(void)
diff --git a/drivers/misc/vmw_balloon.c b/drivers/misc/vmw_balloon.c
index 6653fc53c951c..6df51ee8db621 100644
--- a/drivers/misc/vmw_balloon.c
+++ b/drivers/misc/vmw_balloon.c
@@ -1806,7 +1806,7 @@ static int vmballoon_migratepage(struct balloon_dev_info *b_dev_info,
 		 * the list after acquiring the lock.
 		 */
 		get_page(newpage);
-		ret = MIGRATEPAGE_SUCCESS;
+		ret = 0;
 	}
 
 	/* Update the balloon list under the @pages_lock */
@@ -1817,7 +1817,7 @@ static int vmballoon_migratepage(struct balloon_dev_info *b_dev_info,
 	 * If we succeed just insert it to the list and update the statistics
 	 * under the lock.
 	 */
-	if (ret == MIGRATEPAGE_SUCCESS) {
+	if (!ret) {
 		balloon_page_insert(&b->b_dev_info, newpage);
 		__count_vm_event(BALLOON_MIGRATE);
 	}
diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index e299e18346a30..eae65136cdfb5 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -875,7 +875,7 @@ static int virtballoon_migratepage(struct balloon_dev_info *vb_dev_info,
 	balloon_page_finalize(page);
 	put_page(page); /* balloon reference */
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 #endif /* CONFIG_BALLOON_COMPACTION */
 
diff --git a/fs/aio.c b/fs/aio.c
index 7fc7b6221312c..059e03cfa088c 100644
--- a/fs/aio.c
+++ b/fs/aio.c
@@ -445,7 +445,7 @@ static int aio_migrate_folio(struct address_space *mapping, struct folio *dst,
 	folio_get(dst);
 
 	rc = folio_migrate_mapping(mapping, dst, src, 1);
-	if (rc != MIGRATEPAGE_SUCCESS) {
+	if (rc) {
 		folio_put(dst);
 		goto out_unlock;
 	}
diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index b77dd22b8cdbe..1d64fee6f59e6 100644
--- a/fs/btrfs/inode.c
+++ b/fs/btrfs/inode.c
@@ -7411,7 +7411,7 @@ static int btrfs_migrate_folio(struct address_space *mapping,
 {
 	int ret = filemap_migrate_folio(mapping, dst, src, mode);
 
-	if (ret != MIGRATEPAGE_SUCCESS)
+	if (ret)
 		return ret;
 
 	if (folio_test_ordered(src)) {
@@ -7419,7 +7419,7 @@ static int btrfs_migrate_folio(struct address_space *mapping,
 		folio_set_ordered(dst);
 	}
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 #else
 #define btrfs_migrate_folio NULL
diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index 09d4baef29cf9..34d496a2b7de6 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -1052,7 +1052,7 @@ static int hugetlbfs_migrate_folio(struct address_space *mapping,
 	int rc;
 
 	rc = migrate_huge_page_move_mapping(mapping, dst, src);
-	if (rc != MIGRATEPAGE_SUCCESS)
+	if (rc)
 		return rc;
 
 	if (hugetlb_folio_subpool(src)) {
@@ -1063,7 +1063,7 @@ static int hugetlbfs_migrate_folio(struct address_space *mapping,
 
 	folio_migrate_flags(dst, src);
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 #else
 #define hugetlbfs_migrate_folio NULL
diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index b98cf3bb6c1fe..871cf4fb36366 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -169,7 +169,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
 	}
 
 	rc = filemap_migrate_folio(mapping, dst, src, mode);
-	if (rc != MIGRATEPAGE_SUCCESS)
+	if (rc)
 		return rc;
 
 	for (i = 0; i < MPS_PER_PAGE; i++) {
@@ -199,7 +199,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
 		}
 	}
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 #endif	/* CONFIG_MIGRATION */
 
@@ -242,7 +242,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
 		return -EAGAIN;
 
 	rc = filemap_migrate_folio(mapping, dst, src, mode);
-	if (rc != MIGRATEPAGE_SUCCESS)
+	if (rc)
 		return rc;
 
 	if (unlikely(insert_metapage(dst, mp)))
@@ -253,7 +253,7 @@ static int __metapage_migrate_folio(struct address_space *mapping,
 	mp->folio = dst;
 	remove_metapage(src, mp);
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 #endif	/* CONFIG_MIGRATION */
 
diff --git a/include/linux/migrate.h b/include/linux/migrate.h
index 40f2b5a37efbb..02f11704fb686 100644
--- a/include/linux/migrate.h
+++ b/include/linux/migrate.h
@@ -12,13 +12,6 @@ typedef void free_folio_t(struct folio *folio, unsigned long private);
 
 struct migration_target_control;
 
-/*
- * Return values from addresss_space_operations.migratepage():
- * - negative errno on page migration failure;
- * - zero on page migration success;
- */
-#define MIGRATEPAGE_SUCCESS		0
-
 /**
  * struct movable_operations - Driver page migration
  * @isolate_page:
@@ -34,8 +27,7 @@ struct migration_target_control;
  * @src page.  The driver should copy the contents of the
  * @src page to the @dst page and set up the fields of @dst page.
  * Both pages are locked.
- * If page migration is successful, the driver should
- * return MIGRATEPAGE_SUCCESS.
+ * If page migration is successful, the driver should return 0.
  * If the driver cannot migrate the page at the moment, it can return
  * -EAGAIN.  The VM interprets this as a temporary migration failure and
  * will retry it later.  Any other error value is a permanent migration
diff --git a/mm/migrate.c b/mm/migrate.c
index e9dacf1028dc7..2db4974178e6a 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -209,18 +209,17 @@ static void putback_movable_ops_page(struct page *page)
  * src and dst are also released by migration core. These pages will not be
  * folios in the future, so that must be reworked.
  *
- * Returns MIGRATEPAGE_SUCCESS on success, otherwise a negative error
- * code.
+ * Returns 0 on success, otherwise a negative error code.
  */
 static int migrate_movable_ops_page(struct page *dst, struct page *src,
 		enum migrate_mode mode)
 {
-	int rc = MIGRATEPAGE_SUCCESS;
+	int rc;
 
 	VM_WARN_ON_ONCE_PAGE(!page_has_movable_ops(src), src);
 	VM_WARN_ON_ONCE_PAGE(!PageMovableOpsIsolated(src), src);
 	rc = page_movable_ops(src)->migrate_page(dst, src, mode);
-	if (rc == MIGRATEPAGE_SUCCESS)
+	if (!rc)
 		ClearPageMovableOpsIsolated(src);
 	return rc;
 }
@@ -565,7 +564,7 @@ static int __folio_migrate_mapping(struct address_space *mapping,
 		if (folio_test_swapbacked(folio))
 			__folio_set_swapbacked(newfolio);
 
-		return MIGRATEPAGE_SUCCESS;
+		return 0;
 	}
 
 	oldzone = folio_zone(folio);
@@ -666,7 +665,7 @@ static int __folio_migrate_mapping(struct address_space *mapping,
 	}
 	local_irq_enable();
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 
 int folio_migrate_mapping(struct address_space *mapping,
@@ -715,7 +714,7 @@ int migrate_huge_page_move_mapping(struct address_space *mapping,
 
 	xas_unlock_irq(&xas);
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 
 /*
@@ -831,14 +830,14 @@ static int __migrate_folio(struct address_space *mapping, struct folio *dst,
 		return rc;
 
 	rc = __folio_migrate_mapping(mapping, dst, src, expected_count);
-	if (rc != MIGRATEPAGE_SUCCESS)
+	if (rc)
 		return rc;
 
 	if (src_private)
 		folio_attach_private(dst, folio_detach_private(src));
 
 	folio_migrate_flags(dst, src);
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 
 /**
@@ -945,7 +944,7 @@ static int __buffer_migrate_folio(struct address_space *mapping,
 	}
 
 	rc = filemap_migrate_folio(mapping, dst, src, mode);
-	if (rc != MIGRATEPAGE_SUCCESS)
+	if (rc)
 		goto unlock_buffers;
 
 	bh = head;
@@ -1049,7 +1048,7 @@ static int fallback_migrate_folio(struct address_space *mapping,
  *
  * Return value:
  *   < 0 - error code
- *  MIGRATEPAGE_SUCCESS - success
+ *     0 - success
  */
 static int move_to_new_folio(struct folio *dst, struct folio *src,
 				enum migrate_mode mode)
@@ -1077,7 +1076,7 @@ static int move_to_new_folio(struct folio *dst, struct folio *src,
 	else
 		rc = fallback_migrate_folio(mapping, dst, src, mode);
 
-	if (rc == MIGRATEPAGE_SUCCESS) {
+	if (!rc) {
 		/*
 		 * For pagecache folios, src->mapping must be cleared before src
 		 * is freed. Anonymous folios must stay anonymous until freed.
@@ -1427,7 +1426,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
 	if (folio_ref_count(src) == 1) {
 		/* page was freed from under us. So we are done. */
 		folio_putback_hugetlb(src);
-		return MIGRATEPAGE_SUCCESS;
+		return 0;
 	}
 
 	dst = get_new_folio(src, private);
@@ -1490,8 +1489,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
 		rc = move_to_new_folio(dst, src, mode);
 
 	if (page_was_mapped)
-		remove_migration_ptes(src,
-			rc == MIGRATEPAGE_SUCCESS ? dst : src, 0);
+		remove_migration_ptes(src, !rc ? dst : src, 0);
 
 unlock_put_anon:
 	folio_unlock(dst);
@@ -1500,7 +1498,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
 	if (anon_vma)
 		put_anon_vma(anon_vma);
 
-	if (rc == MIGRATEPAGE_SUCCESS) {
+	if (!rc) {
 		move_hugetlb_state(src, dst, reason);
 		put_new_folio = NULL;
 	}
@@ -1508,7 +1506,7 @@ static int unmap_and_move_huge_page(new_folio_t get_new_folio,
 out_unlock:
 	folio_unlock(src);
 out:
-	if (rc == MIGRATEPAGE_SUCCESS)
+	if (!rc)
 		folio_putback_hugetlb(src);
 	else if (rc != -EAGAIN)
 		list_move_tail(&src->lru, ret);
@@ -1618,7 +1616,7 @@ static int migrate_hugetlbs(struct list_head *from, new_folio_t get_new_folio,
 						      reason, ret_folios);
 			/*
 			 * The rules are:
-			 *	Success: hugetlb folio will be put back
+			 *	0: hugetlb folio will be put back
 			 *	-EAGAIN: stay on the from list
 			 *	-ENOMEM: stay on the from list
 			 *	Other errno: put on ret_folios list
@@ -1635,7 +1633,7 @@ static int migrate_hugetlbs(struct list_head *from, new_folio_t get_new_folio,
 				retry++;
 				nr_retry_pages += nr_pages;
 				break;
-			case MIGRATEPAGE_SUCCESS:
+			case 0:
 				stats->nr_succeeded += nr_pages;
 				break;
 			default:
@@ -1689,7 +1687,7 @@ static void migrate_folios_move(struct list_head *src_folios,
 				reason, ret_folios);
 		/*
 		 * The rules are:
-		 *	Success: folio will be freed
+		 *	0: folio will be freed
 		 *	-EAGAIN: stay on the unmap_folios list
 		 *	Other errno: put on ret_folios list
 		 */
@@ -1699,7 +1697,7 @@ static void migrate_folios_move(struct list_head *src_folios,
 			*thp_retry += is_thp;
 			*nr_retry_pages += nr_pages;
 			break;
-		case MIGRATEPAGE_SUCCESS:
+		case 0:
 			stats->nr_succeeded += nr_pages;
 			stats->nr_thp_succeeded += is_thp;
 			break;
diff --git a/mm/migrate_device.c b/mm/migrate_device.c
index e05e14d6eacdb..abd9f6850db65 100644
--- a/mm/migrate_device.c
+++ b/mm/migrate_device.c
@@ -778,7 +778,7 @@ static void __migrate_device_pages(unsigned long *src_pfns,
 		if (migrate && migrate->fault_page == page)
 			extra_cnt = 1;
 		r = folio_migrate_mapping(mapping, newfolio, folio, extra_cnt);
-		if (r != MIGRATEPAGE_SUCCESS)
+		if (r)
 			src_pfns[i] &= ~MIGRATE_PFN_MIGRATE;
 		else
 			folio_migrate_flags(newfolio, folio);
diff --git a/mm/zsmalloc.c b/mm/zsmalloc.c
index 2c5e56a653544..84eb91d47a226 100644
--- a/mm/zsmalloc.c
+++ b/mm/zsmalloc.c
@@ -1746,7 +1746,7 @@ static int zs_page_migrate(struct page *newpage, struct page *page,
 	 * instead.
 	 */
 	if (!zpdesc->zspage)
-		return MIGRATEPAGE_SUCCESS;
+		return 0;
 
 	/* The page is locked, so this pointer must remain valid */
 	zspage = get_zspage(zpdesc);
@@ -1813,7 +1813,7 @@ static int zs_page_migrate(struct page *newpage, struct page *page,
 	reset_zpdesc(zpdesc);
 	zpdesc_put(zpdesc);
 
-	return MIGRATEPAGE_SUCCESS;
+	return 0;
 }
 
 static void zs_page_putback(struct page *page)
-- 
2.50.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
