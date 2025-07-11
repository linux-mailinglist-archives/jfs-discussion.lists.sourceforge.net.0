Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44010B040DE
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Jul 2025 16:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=QrK75nFH4uV3d+u1d7VzFTUHFHpJVOnfgN6LwqJ8pN8=; b=Q1uEqByY8bPxPsR7qfruFEXSJA
	F9Bm+FEP3SzO3RMRQQg4UgCKnnKINoI0vheq2/nJD6gBsyPBpH6Zl3sMuDYanZB6ClM8NQmuIg9rk
	PdkjwRalgjQIuThCsLGz/MAJ9eXozxcsOLt4XIjzT7ox2QJsut8hkabn4rYVNrUCHD+M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ubJl3-0006Go-Lq;
	Mon, 14 Jul 2025 14:02:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3FQNxaAkbACoYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uaJuW-0000tr-A3 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 19:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VLiCgbUvpuHgSzedG/d0dkj2/LzDFoEPV2dlBZwd1TU=; b=SdfX6GrLaD7vyb0Xi29kGFu5Cy
 iA0TisP+XKFQqYh6JGVHLx9NkK0Afzt706VkR/oQgHCwYq23j/FKrL1Z9eQlznzemezNFQ2Rv21we
 Zqv13nmlHAEWVioBNSPf23E2s/nJxnshb34yjpn2k49Vvp6hk0Y2I1Ra1X/3vj2vhQgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VLiCgbUvpuHgSzedG/d0dkj2/LzDFoEPV2dlBZwd1TU=; b=i
 mzUdqnSswQVEb61pn+SUu1LH3Az2v+ZuvFvNZ4odJvEEoRAtuH/4XfuU4L288DhdN+I0zbxlJMZeq
 b1Y3Ek6QWxzPAPDSpxPfOSrMYvHYJl6N5VdG9znKf/y0tNo7Ia0Uh5JwQlw+3e373WzPTbcjVIRAb
 TVAqNNaCHSqiERJg=;
Received: from mail-qv1-f72.google.com ([209.85.219.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uaJuV-0002Hj-QF for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 19:59:56 +0000
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6fd0a3f15daso78379436d6.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 11 Jul 2025 12:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752263985; x=1752868785;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VLiCgbUvpuHgSzedG/d0dkj2/LzDFoEPV2dlBZwd1TU=;
 b=CrOsK3pYXZhmbxAEms8sKQuT2OTdDMjIMTnMcYXweZ1/V+/iOfVMWjD+BQYlksUedj
 lZ0EhC02kusIC4rZKftUDXDExldmhcIrlsl9ZHMmJfIxk4qhaUkm8hjZNPJdK4hmIt83
 Qt82oy04KBTxHYt0eVatu8AncNxCVnW1oMJjA/EyNHiETP1MHFbZ3Y7dOtcQn3oGZNij
 wK89YG/1eZP6g0U3uLjh+XGHiH+Wryuhn3qABQxOrv4uiumbCt0SoPTWxw419+qu4WAf
 PRm2VbpCHwYFbySWmTO0W7sV7AfAYxydhKH0MzxHGtevtZ0Nno297wnh9cUR8TvtYDH8
 GlLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU569lkMNN5RnBM1Mdp7mb+QqaG6/4JpvK5joTUKixZbIgOmv+z5xdza9rWdCLI1CfZ9IcEkuG21QjnoaLDqA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwCHIUGfTbBPatPZTJBA2XOaf8uCqwXsRrilkIzaxIT0rDqjUfM
 qv+I3y+8ARqC7USqV2B9H0MpLu/Cpe+1ezcmpJRWzi4cKFam99z18lIjDysXqRm3aN4RDnRhDx0
 nqZkN1iwPVoOA0UATyBX5mbyw+MZKGJoputXSQmL4NYFJQxkbAspJJR5HieM=
X-Google-Smtp-Source: AGHT+IGRhMJOZvny5MX2PRrEbROR2nl61a5ERscS0MwH2MJL0/EaCuaUyH5lY/Hs0+U19HgsshuS2Lmy22Yo/U4JhtOYqknQ/OW7
MIME-Version: 1.0
X-Received: by 2002:a05:6602:b90:b0:86c:f2c1:70d1 with SMTP id
 ca18e2360f4ac-87977f521e7mr361411839f.1.1752236821815; Fri, 11 Jul 2025
 05:27:01 -0700 (PDT)
Date: Fri, 11 Jul 2025 05:27:01 -0700
In-Reply-To: <686a8143.a00a0220.c7b3.005b.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68710315.a00a0220.26a83e.004a.GAE@google.com>
To: adilger.kernel@dilger.ca, anna.luese@v-bien.de, brauner@kernel.org, 
 jack@suse.cz, jfs-discussion@lists.sourceforge.net, libaokun1@huawei.com, 
 linkinjeon@kernel.org, linux-ext4@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 p.raghav@samsung.com, shaggy@kernel.org, sj1557.seo@samsung.com, 
 syzkaller-bugs@googlegroups.com, tytso@mit.edu
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 77eb64439ad52d8afb57bb4dae24a2743c68f50d
 Author: Pankaj Raghav <p.raghav@samsung.com> Date: Thu Jun 26 11:32:23 2025
 +0000 fs/buffer: remove the min and max limit checks in __getblk_slow() 
 Content analysis details:   (3.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: goo.gl] [URI: syzkaller.appspot.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.72 listed in wl.mailspike.net]
X-Headers-End: 1uaJuV-0002Hj-QF
X-Mailman-Approved-At: Mon, 14 Jul 2025 14:02:16 +0000
Subject: Re: [Jfs-discussion] [syzbot] [ext4?] WARNING in bdev_getblk
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot has bisected this issue to:

commit 77eb64439ad52d8afb57bb4dae24a2743c68f50d
Author: Pankaj Raghav <p.raghav@samsung.com>
Date:   Thu Jun 26 11:32:23 2025 +0000

    fs/buffer: remove the min and max limit checks in __getblk_slow()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127d8d82580000
start commit:   835244aba90d Add linux-next specific files for 20250709
git tree:       linux-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=117d8d82580000
console output: https://syzkaller.appspot.com/x/log.txt?x=167d8d82580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8396fd456733c122
dashboard link: https://syzkaller.appspot.com/bug?extid=01ef7a8da81a975e1ccd
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115c40f0580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11856a8c580000

Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com
Fixes: 77eb64439ad5 ("fs/buffer: remove the min and max limit checks in __getblk_slow()")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
