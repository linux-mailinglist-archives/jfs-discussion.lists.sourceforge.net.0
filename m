Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HA1H9N6d2n7ggEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Jan 2026 15:31:47 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B76758981F
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Jan 2026 15:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tlHL/F5Qtm2J9DCTe4dqj/wmn930CJz2ninMQdbjoBQ=; b=Cfvt4Gynp/jyQvpKrSrnESOvM6
	pGKblFdbpmXTlFUp/S2zGZrIrSGSgN213ZKcXxe0q9aL+8Zj9JncBuNmE25bmvRRTIczTcBGGDfPe
	EoGNj9pXqoJz12vDKY4MidAR899xp/l1WXzhLzbl+TC4XNcsSYk9Xl+b4XMWWQBAzwUg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vkNcK-0003MS-JP;
	Mon, 26 Jan 2026 14:31:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <32RN3aQkbADAeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vkGm3-0000Dx-Nh for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jan 2026 07:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q6lg/ILLq3pMa+NRLpul7n1H7+AalOdSBgDf5vWKrQk=; b=aWzj2zqRewaRSV8LR6tmz3N2VK
 SL8Y2x5JpyHpe0l2c5AXzgV0W95HCWpiTI6JP05WsRMCPNkixdtHCBEiQgY16dwEf20NnSCYuPQuu
 sNk1tGt6lEY+/bG196wsTHwh3ITLAq8672OktGkoQ7BpyAsT8DGMy+5jpvO6NT/NeHd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q6lg/ILLq3pMa+NRLpul7n1H7+AalOdSBgDf5vWKrQk=; b=m
 Xztu40BymJ+T18jFs2zyRRIRzei/b292pDP+ZAg0DYh0tm1RJ640XXyXlYZnJ1wl3OFLxaIQnZUAd
 SSiGqISuyk0/W+mdDPAr838bFVPPKBnsbQX+6eWXd1bYDFAhP/qQy2+95S9JbrjTuoarlrserpXoH
 WSPraDDFjzKo03JU=;
Received: from mail-ot1-f70.google.com ([209.85.210.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkGm4-0007ER-0G for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jan 2026 07:12:36 +0000
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-7cad3d056c1so12777307a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 25 Jan 2026 23:12:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769411545; x=1770016345;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q6lg/ILLq3pMa+NRLpul7n1H7+AalOdSBgDf5vWKrQk=;
 b=Cyr9ZN2ONASdLsZ3hKg1x1mHnFkod8KJQ0d2xzNmOoOnzkz5D5qpUTV54zY+iSz5hv
 p+QxkWAbH3Ywc41jn04hXYtrx2IjkMIUz7PAGz6rFBqiXD+wmwAFQDSlpsE7Ns1NoF8K
 BHH8K4GCLxwf79Uxxyvjb+s8w29+NMuT91h8GROmrUnLuM4KhRguo5BSlgHWaBsbr5fn
 Pl1OHGL6x9kqPOev0311yFycpAE3LpvHyzh2tENxP5Dro4HKUYBSAkGnhE0KIOQP0698
 dvgg1YZXyClTg6ESBchhW6T2SODhFB677OC4+c+9Ljv+0YyznN0nDEshuOsvrI3knaYv
 izNg==
X-Gm-Message-State: AOJu0YywrArX7a38U0U6eEp5k6AakOf+rt9NwlaBYNpnU9dJYKnHwMeq
 gAHWG9vfpxjtjFsBctbsnzNT75S2TOClVKmoC380d3vI7TIxF25iXiRxgwh5czUFM535LBLtKmU
 zRfv5beIMoSRGQRVtOpbx/DEn51w2sifdT9oCxIk9mr+GONUfKk3S2/+2qcQ=
MIME-Version: 1.0
X-Received: by 2002:a05:6820:993:b0:65b:8655:d4d2 with SMTP id
 006d021491bc7-662e0a2885dmr1645011eaf.16.1769411545458; Sun, 25 Jan 2026
 23:12:25 -0800 (PST)
Date: Sun, 25 Jan 2026 23:12:25 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <697713d9.050a0220.226181.0016.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 3 new
 issues were detected and 0 were fixed. In total, 72 issues are still open
 and 65 have already been fixed. 
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vkGm4-0007ER-0G
X-Mailman-Approved-At: Mon, 26 Jan 2026 14:31:00 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Jan 2026)
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
Reply-To: syzbot <syzbot+list23105928ba38c11f9f88@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REDIRECTOR_URL(0.00)[goo.gl];
	HAS_REPLYTO(0.00)[syzbot+list23105928ba38c11f9f88@syzkaller.appspotmail.com];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,googlegroups.com:email,goo.gl:url,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,syzkaller.appspotmail.com:replyto]
X-Rspamd-Queue-Id: B76758981F
X-Rspamd-Action: no action

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 3 new issues were detected and 0 were fixed.
In total, 72 issues are still open and 65 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  87486   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  47241   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  39713   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  7923    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  6506    Yes   KASAN: slab-use-after-free Write in dtSplitPage
                   https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
<6>  6318    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<7>  4538    Yes   general protection fault in txEnd
                   https://syzkaller.appspot.com/bug?extid=1d096d31de6a0491b55e
<8>  4475    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<9>  4265    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 3318    Yes   KASAN: use-after-free Read in jfs_lazycommit
                   https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

To disable reminders for individual bugs, reply with the following command:
#syz set <Ref> no-reminders

To change bug's subsystems, reply with:
#syz set <Ref> subsystems: new-subsystem

You may send multiple commands in a single email message.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
