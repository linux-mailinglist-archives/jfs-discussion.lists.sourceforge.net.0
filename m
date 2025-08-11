Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E33CDB20C34
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Aug 2025 16:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GICRel79eviBxGSHw5kdr41r21rpXMOxjtSodtHnyN4=; b=gmbvbeM8kcm8sNEXyowW49mZNT
	1rvQSjLW7whm0zDWPkxvljoyAn5JprhpH2XyX3+zVetR9RjbqBUuEqfqNjciWDS0tgTidPsLFv4K9
	++eHLFebk3ihngoEQ3TmyoBWfOKTyxSLRmgUPVMwh2lvSaQd0U+zgtwfVjV2ZKtZJygI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ulTh0-0003hf-1s;
	Mon, 11 Aug 2025 14:40:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhildenb@redhat.com>) id 1ulTgy-0003hU-EY
 for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Aug 2025 14:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xm0iYFfBOfajjEoxheRfcdwl0u9A+taNg4Dew7papsc=; b=eN7w/TPDVc0OfCwBHY56kR5P57
 IWnD57KZ5eXKeLh310PQYIjbLAfqEhCtyRGYfrdCMp4gqmxXb4V0jalRjU7+FGXaluta9Tx2VT63D
 B5tgX0JTMg4UQcTY/jW8hN2gcGn9Ucq2pgEhC4tapd1IRB7owWHzqE9JKrRWwnXR5wFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xm0iYFfBOfajjEoxheRfcdwl0u9A+taNg4Dew7papsc=; b=UxOiCm2Df82V0PEjPIdpEroXsV
 RT6vm2L2JjmnJYjZt1WJITmdDpgUYXRexw2X4WZOcRcqyUdSJbUplASukV6oBxNn1nbuX6jJaXocK
 L8LWN1+XG+kqDAfWcZRNyFmSY4KDY9fV9wPT//kExKj7HMNkHgFkBHADeYN0PBYoQlQY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ulTgx-0001AT-Kt for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Aug 2025 14:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1754923197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xm0iYFfBOfajjEoxheRfcdwl0u9A+taNg4Dew7papsc=;
 b=dUoPjph8tZ8IEfYRdE+czPf0/abbke/oGvlv7H79sGldVYQYBoPprCZ0RiHGTtM5T0SGoE
 0F9aeyUmA4sCfb57CQRT1PbBBKXa/PfKG1p12E+KOQMd3tQIRP0l0ar1yuOTuzGgFjqgRb
 ZVHGp9bQmawHI/9/Wghr4xbisJSEXXo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-I3F8Y06vP4-MBrCGV_b-ww-1; Mon, 11 Aug 2025 10:39:56 -0400
X-MC-Unique: I3F8Y06vP4-MBrCGV_b-ww-1
X-Mimecast-MFC-AGG-ID: I3F8Y06vP4-MBrCGV_b-ww_1754923195
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-451ecc3be97so23341985e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 11 Aug 2025 07:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754923195; x=1755527995;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xm0iYFfBOfajjEoxheRfcdwl0u9A+taNg4Dew7papsc=;
 b=hR8gk3EVUWhmeyMABXaCP+PGWMIPgLTKpUctaFOdwSpo3PB4mMufaVgP2Z/TejOJgD
 FmyEhKXojmFA0QMm0tHWi3TSMbYFZT/JitO0M+nlYhRCT+jlC1VgY0FjWhUHQ0wK27hu
 5RBmcjBLYNF7hCw7UVwG6amMZPCR63oPVB6jlqAbUvCu9d9ICxiyVElZ8lmpOmP9BdV/
 grG+XtUA8vhUev7EOqHEWvmMD8Th5zPfIeUVo2gfiCbaswx3xhnKoHX90qIsDkiwmDkJ
 FcBte66rXM3IMeaNCuWfGvBJYnUVtpoyqNFbUwqo8B7Ut7+wKvXDr4MRvvri+s8umxkM
 781A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDB4fDIdbcBm/DjmnRZ3gOQahtuZTdd2ROJ6e23wRIwrJFytO58LZ0iemeu9nWZksFtCzJlqgeszCBFZoy/w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwpF2XazhvxMNro/d4oELz9GeyLU/b6jdBiMKPelOOhWxuGnsoA
 HPgv5Uut3z61Dr5HYsD7Vx7pNwLnNZ40OIqKbYHdd9gaTI6XFGndGrjAhaqbFE02Gf7ealck8SB
 n6YzMofXDRKN6qwzDgmHV+u6sVcGTOy7fZYu0zdamXdZeIZ/kcQjRYIgnE+zADsVo7q5uKsu0mG
 9/
X-Gm-Gg: ASbGncubWBxG3uOWSTuGxUEveL9zIi1LEIEH1kk4YBatwn8B0oF69gCHem1YCR5vYJ5
 e59oFah9FfdHaKHhRy1/SWirdJFed79I5pvu3Beaa8OWqNMgDU8QaiKlSciuXqn4zFEiaj0LG0n
 d1D743EJ0hmBucemF4kc4ATZcZWgnweG6f4qfstVTCRGumSJkD6466AIX4iP+q+UgghFO8ecBau
 hCXmLOg6bL47G1PmUJ7zHHGcgXI/oRlSwnOjUCFOUglWN7EsXWbA1SMJLW3bvLEHGDoekNTMSXW
 OdMuNNQC5xtXPo4vUX1vKyhfMLW0nfEX1M49bAG24uJT/oocwdo2RQ1Qj7H1BOGKBdbePGMpmWh
 1Rkh18y8PyKOTy0G7aYmlAdod
X-Received: by 2002:a05:600c:1d01:b0:458:be62:dcd3 with SMTP id
 5b1f17b1804b1-459f4f9bd34mr130468615e9.17.1754923195021; 
 Mon, 11 Aug 2025 07:39:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiigg+0PNvGEb3wRzSSq9JM70VE9hLMIH2EVbNkuJbtlZWW3Ch7GW5N/kbNcHDKqZhLgst/w==
X-Received: by 2002:a05:600c:1d01:b0:458:be62:dcd3 with SMTP id
 5b1f17b1804b1-459f4f9bd34mr130467845e9.17.1754923194477; 
 Mon, 11 Aug 2025 07:39:54 -0700 (PDT)
Received: from localhost
 (p200300d82f06a600a397de1d2f8bb66f.dip0.t-ipconnect.de.
 [2003:d8:2f06:a600:a397:de1d:2f8b:b66f])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-459fb43b491sm120611835e9.3.2025.08.11.07.39.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Aug 2025 07:39:54 -0700 (PDT)
To: linux-kernel@vger.kernel.org
Date: Mon, 11 Aug 2025 16:39:47 +0200
Message-ID: <20250811143949.1117439-2-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811143949.1117439-1-david@redhat.com>
References: <20250811143949.1117439-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6bwCaPyvlfM7zv_lCx8lAoH07_EbxWU96waIgxliD-8_1754923195
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: migrate_folio_unmap() is the only user of MIGRATEPAGE_UNMAP.
 We want to remove MIGRATEPAGE_* completely. It's rather weird to have a
 generic
 MIGRATEPAGE_UNMAP, documented to be returned from address-space callbacks,
 when it's only used for an internal helper. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ulTgx-0001AT-Kt
Subject: [Jfs-discussion] [PATCH v1 1/2] mm/migrate: remove MIGRATEPAGE_UNMAP
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

migrate_folio_unmap() is the only user of MIGRATEPAGE_UNMAP. We want to
remove MIGRATEPAGE_* completely.

It's rather weird to have a generic MIGRATEPAGE_UNMAP, documented to be
returned from address-space callbacks, when it's only used for an
internal helper.

Let's start by having only a single "success" return value for
migrate_folio_unmap() -- 0 -- by moving the "folio was already freed"
check into the single caller.

There is a remaining comment for PG_isolated, which we renamed to
PG_movable_ops_isolated recently and forgot to update.

While we might still run into that case with zsmalloc, it's something we
want to get rid of soon. So let's just focus that optimization on real
folios only for now by excluding movable_ops pages. Note that concurrent
freeing can happen at any time and this "already freed" check is not
relevant for correctness.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/migrate.h |  1 -
 mm/migrate.c            | 40 ++++++++++++++++++++--------------------
 2 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/include/linux/migrate.h b/include/linux/migrate.h
index acadd41e0b5cf..40f2b5a37efbb 100644
--- a/include/linux/migrate.h
+++ b/include/linux/migrate.h
@@ -18,7 +18,6 @@ struct migration_target_control;
  * - zero on page migration success;
  */
 #define MIGRATEPAGE_SUCCESS		0
-#define MIGRATEPAGE_UNMAP		1
 
 /**
  * struct movable_operations - Driver page migration
diff --git a/mm/migrate.c b/mm/migrate.c
index 425401b2d4e14..e9dacf1028dc7 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -1176,16 +1176,6 @@ static int migrate_folio_unmap(new_folio_t get_new_folio,
 	bool locked = false;
 	bool dst_locked = false;
 
-	if (folio_ref_count(src) == 1) {
-		/* Folio was freed from under us. So we are done. */
-		folio_clear_active(src);
-		folio_clear_unevictable(src);
-		/* free_pages_prepare() will clear PG_isolated. */
-		list_del(&src->lru);
-		migrate_folio_done(src, reason);
-		return MIGRATEPAGE_SUCCESS;
-	}
-
 	dst = get_new_folio(src, private);
 	if (!dst)
 		return -ENOMEM;
@@ -1275,7 +1265,7 @@ static int migrate_folio_unmap(new_folio_t get_new_folio,
 
 	if (unlikely(page_has_movable_ops(&src->page))) {
 		__migrate_folio_record(dst, old_page_state, anon_vma);
-		return MIGRATEPAGE_UNMAP;
+		return 0;
 	}
 
 	/*
@@ -1305,7 +1295,7 @@ static int migrate_folio_unmap(new_folio_t get_new_folio,
 
 	if (!folio_mapped(src)) {
 		__migrate_folio_record(dst, old_page_state, anon_vma);
-		return MIGRATEPAGE_UNMAP;
+		return 0;
 	}
 
 out:
@@ -1848,14 +1838,28 @@ static int migrate_pages_batch(struct list_head *from,
 				continue;
 			}
 
+			/*
+			 * If we are holding the last folio reference, the folio
+			 * was freed from under us, so just drop our reference.
+			 */
+			if (likely(!page_has_movable_ops(&folio->page)) &&
+			    folio_ref_count(folio) == 1) {
+				folio_clear_active(folio);
+				folio_clear_unevictable(folio);
+				list_del(&folio->lru);
+				migrate_folio_done(folio, reason);
+				stats->nr_succeeded += nr_pages;
+				stats->nr_thp_succeeded += is_thp;
+				continue;
+			}
+
 			rc = migrate_folio_unmap(get_new_folio, put_new_folio,
 					private, folio, &dst, mode, reason,
 					ret_folios);
 			/*
 			 * The rules are:
-			 *	Success: folio will be freed
-			 *	Unmap: folio will be put on unmap_folios list,
-			 *	       dst folio put on dst_folios list
+			 *	0: folio will be put on unmap_folios list,
+			 *	   dst folio put on dst_folios list
 			 *	-EAGAIN: stay on the from list
 			 *	-ENOMEM: stay on the from list
 			 *	Other errno: put on ret_folios list
@@ -1905,11 +1909,7 @@ static int migrate_pages_batch(struct list_head *from,
 				thp_retry += is_thp;
 				nr_retry_pages += nr_pages;
 				break;
-			case MIGRATEPAGE_SUCCESS:
-				stats->nr_succeeded += nr_pages;
-				stats->nr_thp_succeeded += is_thp;
-				break;
-			case MIGRATEPAGE_UNMAP:
+			case 0:
 				list_move_tail(&folio->lru, &unmap_folios);
 				list_add_tail(&dst->lru, &dst_folios);
 				break;
-- 
2.50.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
