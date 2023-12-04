Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E27E803790
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 Dec 2023 15:52:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rAAIE-0008Ui-7P;
	Mon, 04 Dec 2023 14:51:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3P8htZQkbALgqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rA8Di-0006ym-8O for jfs-discussion@lists.sourceforge.net;
 Mon, 04 Dec 2023 12:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h3vC9DKCks31qlZTLEOBhiTQthQAnOeHRO8hvXnpMao=; b=Ue/RV3IW3pw9AmjqDQbJ0UKCf+
 +QwLdoktkbwOsnoXyzJu8gwgvDgn9t4zXGakaaj6zy6b2WJXOq8cRIhTBVjI+h/zXhYc563TG8ZL+
 9V9uO6V8YN6cCvOUp6+yuFyN2ou9lUiPE+7D9bBnB1n+bKasL3rZQVRshvr2mTfmRAwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h3vC9DKCks31qlZTLEOBhiTQthQAnOeHRO8hvXnpMao=; b=C
 tFNYeNwnG9b+nbOmMKZYkcfVnFw0RwvwwtoN+pC6+E+J4Bkbtc+XReyUNHtrkfTVdFJ/HF4twDcwP
 afULrVGVZE140jhMzwPffQ+WFd/I+WsQga1lfRnnykuJqZygcV6C0QtMyudr58l2zdEszjhuX5bwb
 CVq45ZcNgzCkJIQc=;
Received: from mail-oa1-f71.google.com ([209.85.160.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rA8De-0003bO-F2 for jfs-discussion@lists.sourceforge.net;
 Mon, 04 Dec 2023 12:38:42 +0000
Received: by mail-oa1-f71.google.com with SMTP id
 586e51a60fabf-1fadd5ea2ceso3552380fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 04 Dec 2023 04:38:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701693503; x=1702298303;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=h3vC9DKCks31qlZTLEOBhiTQthQAnOeHRO8hvXnpMao=;
 b=U5cOYNULoG473YPoINq07+7yAP6yKARdcZ3U7kmDUKn+KM8+BiSHf+xV4ubJrqSKxz
 RsLIoTpYUK6fsJ+JyBGUHpb/1jHEZEV7guzacO5eV3AsBNMQRUcso0GGg7EqgkaazZtm
 //95/0fiaStjQAVyFDzh35wnQG0ZGItjhf3BJ9HUEcNrpx36OGR17gH+Wzfw/Lmm1cuN
 wAYde7ht6MhlcbqqXEPh3bzKYtcAybYlCsI+Q6WOPey+IkQusl2GcN61he1EXkOj9YK9
 EzMHunZQzbCV16j6Mv05kZFtoFWxOMshWtZ1p4TKt6d98AX1XorYnlOK2XWfxSFyQDce
 OPIg==
X-Gm-Message-State: AOJu0YxUaHuyOjxtv2xxsJfLMmwzeNrV2nlqEUsPQNOyZGd9Q5FOVAFp
 2k8Jfq6vq+8lroriwwLrPBs0hxFuiASl18bGh0pgW8Lxvrq8VT8=
X-Google-Smtp-Source: AGHT+IESeNWC3Bgx3X6azwZbL3Ppc+gmrsehq+ZGEfKcbxjlmKt1DBtS1guViyUXax/NYtTEmFF/thOINVngKT4GFkzVR9CWhWIs
MIME-Version: 1.0
X-Received: by 2002:a05:6870:d60c:b0:1fa:da34:99d9 with SMTP id
 a12-20020a056870d60c00b001fada3499d9mr2934304oaq.5.1701693503574; Mon, 04 Dec
 2023 04:38:23 -0800 (PST)
Date: Mon, 04 Dec 2023 04:38:23 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cc17fb060bae647b@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello jfs maintainers/developers, This is a 31-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 0 new
 issues were detected and 0 were fixed. In total, 41 issues are still open
 and 20 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.71 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.71 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rA8De-0003bO-F2
X-Mailman-Approved-At: Mon, 04 Dec 2023 14:51:29 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report (Dec 2023)
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
Reply-To: syzbot <syzbot+list36f1468762da119bb5f8@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 31-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 0 new issues were detected and 0 were fixed.
In total, 41 issues are still open and 20 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  1436    Yes   general protection fault in lmLogSync (2)
                   https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
<2>  1187    Yes   UBSAN: array-index-out-of-bounds in xtInsert
                   https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
<3>  1102    Yes   kernel BUG in jfs_evict_inode
                   https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
<4>  859     Yes   general protection fault in write_special_inodes
                   https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
<5>  441     Yes   kernel BUG in txUnlock
                   https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
<6>  304     Yes   general protection fault in jfs_flush_journal
                   https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
<7>  232     Yes   UBSAN: array-index-out-of-bounds in dbAllocBits
                   https://syzkaller.appspot.com/bug?extid=ae2f5a27a07ae44b0f17
<8>  219     Yes   KASAN: use-after-free Read in release_metapage
                   https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
<9>  169     Yes   KASAN: null-ptr-deref Read in drop_buffers (2)
                   https://syzkaller.appspot.com/bug?extid=d285c6d0b23c6033d520
<10> 110     Yes   KASAN: use-after-free Read in diFree
                   https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a

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
