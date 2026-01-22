Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIAwC/F8cWm0HwAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 22 Jan 2026 02:27:13 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A66660514
	for <lists+jfs-discussion@lfdr.de>; Thu, 22 Jan 2026 02:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8ewfX61Wu3p65J/EYrP5mG/5ZDPU7bBEJnpcJ9Nd2hI=; b=ZCs0yB7F0SOcKkGQCpTI2YwThr
	cpXer5PSjtwT+PFY9jqsxqw3Bynjc54e1Jd4ut7DP+U6EOsH/Z9QmSlKvA1quqSrzLuAb6RcLOFD+
	EVyGAOfGYRUOdNDJCREWSUK7Fv3Wg9XruiDhWzU5RsPsRu9s5wweo6RCjsGxYha7EpuQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vijSw-0007tA-Ry;
	Thu, 22 Jan 2026 01:26:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qikeyu2017@gmail.com>) id 1vijSv-0007st-6I
 for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jan 2026 01:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dUSv8YHIJjxsXrtxcCX+JA8SGYZsDqSqraKizssPYoQ=; b=RZ0Yi0RgJlQJBhayskx4dxb7WO
 d+j9YiRFYIdZUUXwyyg1Ral1f6CTcLcjDWT1k3eu/T4G6BZvgSBQdPjCi2NC56mhGywhtXLRdYtN5
 bSl41nBFmVIVkg0W2dngzMiPIdWyye7oqBSoVIDQdbpVgxoQtmklbNW7uuS8CcSYN5Ig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dUSv8YHIJjxsXrtxcCX+JA8SGYZsDqSqraKizssPYoQ=; b=T
 kXZclbvlIksTpBzXGKNBmQ5W1L04yeco1TDITCT6Z+MHgExlqrt9/UvRgTEbeqyk2kzRhqR/MSvWg
 Cg83DMPqnglnEuPCf52f5OHEsHXSmf8Nn0FToc7hHay3WCQFz87B9AiVSBqo1q8EuM1M25f/GIEFK
 wlbhQBzylWFaJoj8=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vijSv-0003DR-KK for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jan 2026 01:26:29 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-34ccdcbe520so245695a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 Jan 2026 17:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769045179; x=1769649979; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dUSv8YHIJjxsXrtxcCX+JA8SGYZsDqSqraKizssPYoQ=;
 b=DR8DLi1yuU+5YRYY3N2rn+lZ0PnQzSGdsUSJiqTBRJhftapn6sndgr3io0pk8TmHfL
 E8KRB1K0wRSGyOxz59nd4PE7sH7Rl1s++qNgO38YCA8YwJsG0y+7yJs4uqzI7jWks41K
 BmTMB5IVEe95MyrvARb0HcFGRzsvOk2T8t1ItE+h7CZF3v05yn0dKzNQnyrLGRfQQt8d
 vgqSAmHxGyet4bBTJ6033uIgqH3KGX1JpWUOZU3G0EF8VUtPkFHY2dyKwDw+9mbGNfcX
 kxphT/arsLwTUTudmvbCa5UMkix7WX4Nu38b7cgJqE/4U+mkxg0clqnKr966WK6kTegm
 cclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769045179; x=1769649979;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dUSv8YHIJjxsXrtxcCX+JA8SGYZsDqSqraKizssPYoQ=;
 b=oDbE6885iiuISxiubez+aDt3hBJ2PYKqgvfQOjznG63EJo1VfdG9RGgpFOG1umXmzE
 SVIpAauhg2oE7/eqMwQ6KYbd7eGAsU0UJL6PGNMb7teBVT1OwTZlh69m6NBl37U3uBpT
 1y7d098usdtS3hjr7lh3EbX1TeEAmB5iHyxistibA3BzneIyxfB8SMHi2Xs1xUtYsBva
 tYMOyekKUDsN11sr/xq01QljpOG/KM95NkYZV3U9bx3N5ynAs4riaxcdO5gowKxpH6us
 5jhGFhJFQtcYo4KABI6h8HP7vaK5PQduwThKDB0jjtuSlv7It6TRUYXSGiD5X3i84/B/
 lcWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHmHJ00xGriEbq/9hELiT9vfqbCoAngLqvgSuHbmYR0SpvMnIENHnbCECEjfM5Q5PL0V2W5u5iFl9cr3/Wtw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw7/J3lMHNRA/UvTETSnFxZLQuWHbETxUd3l6KyxjZb87v/VCEN
 BSN/GRdppwKdwZEq8jVdiHiEzPnYKhCS6Tw1oVVHaJzDgOZ1wEtL0h8=
X-Gm-Gg: AZuq6aKMxPDSZeePh01xWWKphhWC1p3VbybPL2sCu6HmMz7Gb9B2+iMwjgGALYw01Mg
 FtB8ce2vrlWwqgQoDvTl5VQYnzj3PyRXCT/BtdOaPoTp+xxvMTQGVU0NrjVbVT7QiRRrqBgvlwi
 z3tzHbx9PQfg676vB0jUsbpwvGM2CI+/QEq7BlCxRYqawzFMFu2YR4B+3HZCgisfMOoTLjfuxLV
 YQSs557Inq40shKsWq3dUeENS1mSnx6GyPCAKXaC0X3kYcUp2Ir9b8VimF6D5i+N7XsD/EQTvAx
 cdUzZ8+X4pCofdHRxR/Da/2vpAVqsLQPpM29fgiQhvy1nDSYuq1//GAio9i1EUcKOgW03FBfj8T
 gbICoF2CoWUbDcN/3Zh7BXGk2dBRO5Xnpa2uOrqLiftdtnC/pKKcfN78gwxZSbGl4soNZ732Zod
 dMXl/3R6sMUVjcm1s=
X-Received: by 2002:a17:90b:574b:b0:343:6a63:85d5 with SMTP id
 98e67ed59e1d1-353354d691bmr988240a91.16.1769045178799; 
 Wed, 21 Jan 2026 17:26:18 -0800 (PST)
Received: from DESKTOP-BKIPFGN ([38.76.140.13])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-353354cdcc7sm635105a91.16.2026.01.21.17.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jan 2026 17:26:18 -0800 (PST)
To: shaggy@kernel.org
Date: Thu, 22 Jan 2026 09:25:42 +0800
Message-ID: <20260122012541.1927-2-qikeyu2017@gmail.com>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Similar to the issue fixed in commit 49f9637aafa6 ("jfs: fix
 array-index-out-of-bounds in diNewExt"), the diExtendFS() function also lacks
 validation for the AG (allocation group) number. In diExtendFS(), the variable
 'n' is computed from iagp->agstart which is read from disk. If agstart
 contains
 a malicious or corrupted value, 'n' may exceed the bounds of the im_agctl[]
 array (size MA [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.216.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [qikeyu2017(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [qikeyu2017(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vijSv-0003DR-KK
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diExtendFS
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
From: Kery Qi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Kery Qi <qikeyu2017@gmail.com>
Cc: quic_zhonhan@quicinc.com, dmantipov@yandex.ru, eadavis@qq.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kery Qi <qikeyu2017@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[quicinc.com,yandex.ru,qq.com,lists.sourceforge.net,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:quic_zhonhan@quicinc.com,m:dmantipov@yandex.ru,m:eadavis@qq.com,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:qikeyu2017@gmail.com,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[qikeyu2017@gmail.com]
X-Rspamd-Queue-Id: 4A66660514
X-Rspamd-Action: no action

Similar to the issue fixed in commit 49f9637aafa6 ("jfs: fix
array-index-out-of-bounds in diNewExt"), the diExtendFS() function
also lacks validation for the AG (allocation group) number.

In diExtendFS(), the variable 'n' is computed from iagp->agstart
which is read from disk. If agstart contains a malicious or corrupted
value, 'n' may exceed the bounds of the im_agctl[] array (size MAXAG),
leading to an out-of-bounds access.

Add a boundary check for 'n' after computation to ensure it falls
within the valid range [0, MAXAG). If the check fails, release the
metapage and return -EIO.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Kery Qi <qikeyu2017@gmail.com>
---
 fs/jfs/jfs_imap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..24b414bffd29 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -2900,6 +2900,11 @@ int diExtendFS(struct inode *ipimap, struct inode *ipbmap)
 
 		agstart = le64_to_cpu(iagp->agstart);
 		n = agstart >> mp->db_agl2size;
+		if (n < 0 || n >= MAXAG) {
+			release_metapage(bp);
+			jfs_error(ipimap->i_sb, "invalid AG number\n");
+			return -EIO;
+		}
 		iagp->agstart = cpu_to_le64((s64)n << mp->db_agl2size);
 
 		/* compute backed inodes */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
