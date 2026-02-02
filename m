Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TXFQM9eygGl3AgMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 15:21:11 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB0CD425
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 15:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QDy2HiUgWT9GhmjH10iuSLYqSRm4kPo6Pd0IxyHksFM=; b=VnIfvF2sGJT70a+4+isK/4pCpO
	6+r137UWs/1lFrb/PexLAqhg755TM7VKmyYWlkRTRyaRr555/CXnP5j7PZTny39VlVxw7oQGMIoIB
	hSvMuxpmPFZfp0RPsss+CJIQCvH35ziD9yngA5w65FUzKIjTPetrKN7jZ+dQYDCkYrAM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vmumw-0004fe-NH;
	Mon, 02 Feb 2026 14:20:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <coregee2000@gmail.com>) id 1vmnh6-0008Uc-8c
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 06:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Zk79nAowpySphx7BvRIJCuCmbrkJl1KMvREScdCjFg=; b=cOJMLipZ39nCrFjiRLXRwNobTO
 f8RrOpoPVXhVQzm9I7P65CS6GUMck953cpZ3DhNA2VofGWJVV+gzrLlcIPt8NodtJKgmC9UZDRxIV
 iN9+Dd5b/TkN5sXCEXztSIlb3G920mRkmTVF6W/n3Ia0ZiuDBELV14lsci8DLgm2S7Z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6Zk79nAowpySphx7BvRIJCuCmbrkJl1KMvREScdCjFg=; b=W
 hLQJN0AnWg2x9pWJFojWCXITwN1LGwRxJlmNgqOtGkU8WZFvh8HAiiRaz+KVzhbbIW187g9lA4gU4
 JSH7jf8zHG0r55gG52HEU1m24x4qhVKnXO7OATA7x1IWaubzEGZvTLIwBMuEIPiO4PGAftfwT19as
 pKGmKPwDaDf9pcDs=;
Received: from mail-qv1-f67.google.com ([209.85.219.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vmnh6-0001A8-IW for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 06:45:56 +0000
Received: by mail-qv1-f67.google.com with SMTP id
 6a1803df08f44-894674a4c4aso76043366d6.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 01 Feb 2026 22:45:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770014745; cv=none;
 d=google.com; s=arc-20240605;
 b=lv8WTM07f4M8YwVnyBvTBvf3/xSuGRl7a2SOgag4SQ8Yb53WLrlLXDkgAHpcEcKhSA
 yMPchadfvNceVGkcXI5q8t4vkSD2B2mRwbBZq1BtWGcmK3f++u4Fngz90W4ssI/OoSw1
 KuuIRZ1//VlsbWDpezffFuUUWGjLfUSB6+SkpVr5KVIok83KWrsMWFoDsrXzj2UeRt1v
 dGHsrrXgZ2J8c1o1Fa8aFpFCnDGzVJAa/a2V4q0qMdc5nRBpaaFIYgTUkr6nfx1WNN8a
 KIu+kTC9BaHPYt6JfOjg4vJKtfUjQ8gF6LcJJJt84vDvMdaVIy2m4bPSrmXJcy6HEbMG
 6OXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=6Zk79nAowpySphx7BvRIJCuCmbrkJl1KMvREScdCjFg=;
 fh=ctsqP2HVRzSuyHmCDJP9dLI5/v9nFSmv7csJrfxCQn0=;
 b=OpO8ylbIkOKhW5+zqRnBmWWyRxSogTQKapOyAQZFReoyLWtGD7KanuCoQHMlVeL/D8
 +ho2ESpAabR55hyd4NchzBjyG8vMsvi0g0TYCi4C4ZBMqxJilHRZlCa6bveyoeuTaa9T
 XAR9pUK4nPgiJcWFqi+ZVG1tuMUBbvx5Lx/th/z2JIcyL3/hTxveU3FAa3alcF6E3zC3
 6U3jSoOtZ58j0lw0Oe0jSFIjEb666dM/v9UdxhLt1bij2X66RgJ2hgbIt8r+H1ECWD8s
 TFALHkhwYZmiiDFlIBb4/dUBKmouY6WF1W4sIgOv4RLbpt44YeOFMTTeAWh1PHr0a37w
 asNQ==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770014745; x=1770619545; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6Zk79nAowpySphx7BvRIJCuCmbrkJl1KMvREScdCjFg=;
 b=NzIaV/OvjyshvyQF9KlQmKhaE4ElNEPeol6Yr2sOSROmoBMO7fiiEjlqZMmui1zNME
 pbDvxR81BLCeWpWCROA6ivedlHezsqEE1jA+vnvR5c1POWv3SxwBLY9cl9F4wUdHRJvk
 q84Pc0glj2SLNmGp+OHOQNhzCYG5heu77jnUmAQE5OPjnsJZuHvqlzemNHAoy4twpdzj
 RZpVKhEnR3bQdBHKYHG9p6v4owyOsXX/dMYFkRfeiugZhmOq8FFeqjj8mDuFLV5NsdYi
 P8ZpO4HPX8hPC4lyh957ciW/IR6og6WQaSjun9m6HyuR4B86M5ihB74OAYEvT1qJjZkT
 Ukog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770014745; x=1770619545;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6Zk79nAowpySphx7BvRIJCuCmbrkJl1KMvREScdCjFg=;
 b=mH2AjpvqYHCrxHhV6quYCCSze0gXIjsr4CxFGxwzrJa2ChAV3l++IVOJflyIO9PSRO
 3cXVf1zPsf8oyCFp9HrkkpRp9h8HZ/cziupzaUFXWs9NKOL1JdtdOSGv/pkIUEIZK1lX
 yFab3CiqWfLRG7fuAGnXpB8UEDU6Nu31o69q9NTTAlTrUnnz4W4McgCdf7BXiF40cnVJ
 Jb4Csh4QDt5ps4AQscpoNnVSCbiBG/Z9U+uGaEpxGR+UNbQbdaUufNd70oKzi2v3/IzL
 j4nbXwM/RCNoG8ZDJBbpUPy1RRkQE1FmURBkrSeixffi+d/DCnVUZkbX0b1/Cq8xBDtC
 /MWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDQtE0wGndLvuQdTsynjSDWOtaMqZ2/9/oyxeuiDfs807/H42Z9jf4C2sBGRXjpFC4YEABqD52xmMJRAjRKA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Ywnb9znAD5Oq/nUjaSwc73Y8TtXzjbQpWOVl6LMptCbJOv8ipXn
 f9magixCIWuuMbLvumyBhmJ5ZDGFKqrgc2DJT0hQI47q3p/hY5PTQvtjocdg6UBYDtaBSRoraRe
 v30vtLIn6A+Xt9EusFIs51SOoWnpyfGw=
X-Gm-Gg: AZuq6aLNZyBv3YBUqcSJWQnY3zWtDNyNZJ9tFfP+uLGzpU/QGud5PgZOQWnUM/qmDoq
 6sBFE2NaT5t5rmcBVVrPZ+p3bmhomygZCttdEzhwQW5PIUD78jXMs27/K0Q7XDVO3gDtEDmBA4V
 WTJywYU+TUqVtTsH6bKSgU7rB++ma6Xz1Q78DMOuUEZ3DM4Ju8wnwB/mKB2HmV50WGespM/6zY/
 Qbzjp/rDeB5p6esPOaT+24ZQZjLqgalxeu48f03xsVa55q41lN9mx5k1bipievhbl4jImrmzkRl
 /czXRiAjn9Hk38y2tlXxfYWWZEDyjCF5dBYj
X-Received: by 2002:a05:6214:130b:b0:88a:8358:4381 with SMTP id
 6a1803df08f44-894ea090e56mr161990156d6.36.1770014745538; Sun, 01 Feb 2026
 22:45:45 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 2 Feb 2026 14:45:34 +0800
X-Gm-Features: AZwV_QhuAiBdunY5ZCp8A-UFxr0gKM8RVIHu3mOcmvGWhoJhTOVu5hv555rA0PQ
Message-ID: <CAHPqNmy2eTCqs6Ht1aO6uc7hmw+6+4iCcD0q2hftc_BwpnD10g@mail.gmail.com>
To: syzkaller@googlegroups.com, shaggy@kernel.org, 
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Linux kernel developers and maintainers, We would like
 to report a new kernel bug found by our tool. KASAN: slab-out-of-bounds Read
 in dbJoin. Details are as follows. Kernel commit: v6.12.11 Kernel config:
 see attachment report: see attachment C repro and Syz repro: see attachment
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.219.67 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [coregee2000(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [coregee2000(at)gmail.com]
X-Headers-End: 1vmnh6-0001A8-IW
X-Mailman-Approved-At: Mon, 02 Feb 2026 14:20:26 +0000
Subject: [Jfs-discussion] [Kernel Bug] KASAN: slab-out-of-bounds Read in
 dbJoin
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
From: =?UTF-8?B?5p2O6b6Z5YW0?= via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: =?UTF-8?B?5p2O6b6Z5YW0?= <coregee2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:syzkaller@googlegroups.com,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[coregee2000@gmail.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: E6CB0CD425
X-Rspamd-Action: no action

Dear Linux kernel developers and maintainers,

We would like to report a new kernel bug found by our tool. KASAN:
slab-out-of-bounds Read in dbJoin. Details are as follows.

Kernel commit: v6.12.11
Kernel config: see attachment
report: see attachment
C repro and Syz repro: see attachment

We are currently analyzing the root cause and  working on a
reproducible PoC. We will provide further updates in this thread as
soon as we have more information.

Best regards,
Longxing Li

==================================================================
BUG: KASAN: slab-out-of-bounds in dbJoin+0x295/0x2b0 fs/jfs/jfs_dmap.c:2810
Read of size 1 at addr ffff88802d43f187 by task jfsCommit/132

CPU: 1 UID: 0 PID: 132 Comm: jfsCommit Not tainted 6.12.11 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x116/0x1f0 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0xc3/0x620 mm/kasan/report.c:488
 kasan_report+0xd9/0x110 mm/kasan/report.c:601
 dbJoin+0x295/0x2b0 fs/jfs/jfs_dmap.c:2810
 dbFreeBits+0x15b/0x8e0 fs/jfs/jfs_dmap.c:2343
 dbFreeDmap+0x62/0x1b0 fs/jfs/jfs_dmap.c:2092
 dbFree+0x266/0x550 fs/jfs/jfs_dmap.c:409
 txFreeMap+0x9a9/0xe60 fs/jfs/jfs_txnmgr.c:2534
 txUpdateMap+0x3f1/0xb80 fs/jfs/jfs_txnmgr.c:2330
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x5e6/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>

https://drive.google.com/file/d/17HbDTI_iPjA72SkV5MnO-_w7IQZ9HIHW/view?usp=drive_link

https://drive.google.com/file/d/1uSd2GKdO7qQvJBlurlSIU2LPgGbew8pv/view?usp=drive_link

https://drive.google.com/file/d/1jTmxZHHF0fq0irjpaAaDuDUgOfJldW_e/view?usp=drive_link

https://drive.google.com/file/d/191SyhINtp3fgBsktI_Iif6u1BgyomJ6s/view?usp=drive_link

https://drive.google.com/file/d/1sAokeDZTDP24L9sl2d9XW6DOEY7IYjNI/view?usp=drive_link


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
