Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHSRHjlvoGk3jgQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:05:13 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8A81A98E1
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qXAqfe4wPg1ZtFJXzQlW+/z6AzL5AfYVDuoZC4sszNU=; b=j/jQu2n7Tp+xvdCUsc7yh4pAD9
	hhfLS3KzTAYGwI8kZIogK/buwe1XGSwMrYlfwty8l65m4Ed7SG6x/zcj51HpEUo8kFk2fA9dqU1Vg
	xexJAcrTxcTWzrmouU7CraC/AvX3+KtqHJwvaqxrLP58xp2eo9N6Y9I50mHOf1FbHXQ4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvdqr-0002UP-O6;
	Thu, 26 Feb 2026 16:04:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3e0OgaQkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vvax4-00060P-Fd for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 12:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MICk2Mwzr1OpYNne7xcUCPKYCCoytY5dwHOwtKImcQ8=; b=GfXm9dtxL1x0Z4BS03LRBxwj9M
 GN3h4KRogB6FjoBBJDbr6CidqPGjpOupY5/Kdjm5BFzrJeHMEAiTfr/45I7/V8GbgmIka/WPbj5y8
 0V7mD52wJ1x3fFM5woFqCjXxyKkUVXnRA3qHYl+ONZZg6FIUOL1de80VBhbzD/HoHnDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MICk2Mwzr1OpYNne7xcUCPKYCCoytY5dwHOwtKImcQ8=; b=D
 TpUnwRAOa37BS/+4gpRr6e4tQVdFUwiezkUMCkTcCB7RmAkC3nuJoOSyxeSb62N0Cjqcm7sobNW2h
 efXKWQ5g+/iIKVMCOF5CxColPS0OeyuZbvBTNsw5ooXjJQLgYQ50P7o5o+xLFYlAfJdIlAILCIOpx
 66Ed2yWTULbcwFFM=;
Received: from mail-oo1-f70.google.com ([209.85.161.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvax3-0008Ni-VQ for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 12:58:46 +0000
Received: by mail-oo1-f70.google.com with SMTP id
 006d021491bc7-67995e1ecacso18395616eaf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 26 Feb 2026 04:58:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772110715; x=1772715515;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MICk2Mwzr1OpYNne7xcUCPKYCCoytY5dwHOwtKImcQ8=;
 b=HIcwcZxBYE83Bw7iQ0Voufn+H9VTO7xQtrjNQmsBuAI8m5fleMVs1JwhufbSkVxIXl
 Leh3c46SFxTa6Wlbrae7X5jLjOUEy1Y1KO2/6ssed7XVLyWQ5YyLioL0ktGnzW+hAGPj
 +dVdu+/yDxmaQeCiaqcMOnDIaXPlO8JmPiZC0+ERX+UEZddvhVGJtRnc7GufyYFTYH4u
 6cR1d2Ptx0tJ6WviSjl6clbvw8eY237ZLpmOgwt1XDuUL19YmQg6H9IZbU2iRBdjzu8O
 zwURNM756lY3L8sPSXw7VfU95OK0tuZNm3CK9YzOs+8M6eqMSGG9wN0z5/uQCTs8dnBf
 cQ1g==
X-Gm-Message-State: AOJu0Ywk/+RlNjhbzMBwMfU2kVjxe+fw80dpXb31qyDskBap+hp8d82v
 lRIdJmTUu3tHF/j18+THicIC+F8jFiCXbeQ7p9yCiohLMNWxJxydXGcCz7fVw/QyaXTQxUB0Xwf
 +u/EW5y3yXkrE8PQHrZ5UmTKBCuKCIX5w4H3Z6PVW6ZVce8h20AFyqgy5zkA=
MIME-Version: 1.0
X-Received: by 2002:a05:6820:168b:b0:679:a484:fae0 with SMTP id
 006d021491bc7-679c466c057mr9028841eaf.28.1772110715391; Thu, 26 Feb 2026
 04:58:35 -0800 (PST)
Date: Thu, 26 Feb 2026 04:58:35 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69a0437b.a00a0220.21906d.00e7.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 0 new
 issues were detected and 0 were fixed. In total, 72 issues are still open
 and 66 have already been fixed. 
 Content analysis details:   (0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.70 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vvax3-0008Ni-VQ
X-Mailman-Approved-At: Thu, 26 Feb 2026 16:04:31 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Feb 2026)
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
Reply-To: syzbot <syzbot+listb3db0d154d5465951dfe@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	REDIRECTOR_URL(0.00)[goo.gl];
	HAS_REPLYTO(0.00)[syzbot+listb3db0d154d5465951dfe@syzkaller.appspotmail.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,syzkaller.appspot.com:url,googlegroups.com:email,syzkaller.appspotmail.com:replyto]
X-Rspamd-Queue-Id: EA8A81A98E1
X-Rspamd-Action: no action

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 0 new issues were detected and 0 were fixed.
In total, 72 issues are still open and 66 have already been fixed.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  92526   Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<2>  48984   Yes   WARNING in dbAdjTree
                   https://syzkaller.appspot.com/bug?extid=ab18fa9c959320611727
<3>  41630   Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<4>  8098    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<5>  6968    Yes   KASAN: slab-use-after-free Write in dtSplitPage
                   https://syzkaller.appspot.com/bug?extid=a939a1121380d3212940
<6>  6578    Yes   kernel BUG in dbFindLeaf
                   https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
<7>  5114    Yes   general protection fault in txEnd
                   https://syzkaller.appspot.com/bug?extid=1d096d31de6a0491b55e
<8>  4816    Yes   INFO: task hung in lock_metapage
                   https://syzkaller.appspot.com/bug?extid=1d84a1682e4673d5c4fb
<9>  4364    Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<10> 3550    Yes   KASAN: use-after-free Read in jfs_lazycommit
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
