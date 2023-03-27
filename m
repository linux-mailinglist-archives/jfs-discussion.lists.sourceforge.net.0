Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E914E6CA605
	for <lists+jfs-discussion@lfdr.de>; Mon, 27 Mar 2023 15:35:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pgn0F-0005xJ-Qn;
	Mon, 27 Mar 2023 13:35:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AXkhZAkbAKASYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pgki9-00024k-4V for jfs-discussion@lists.sourceforge.net;
 Mon, 27 Mar 2023 11:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K61iKQKSs+OrqcUFMOs1tqEbYkL/JzmFJpzxpBoo9/Y=; b=i6iiiBfd3hqLZvzbBrixhU5qno
 Zvq9CN+n5Adva7mE1KARFSH8KKa15ptr0AGwJhTYLw8Bbh8kc2JWZ+73BMFgVcpu1N78+0KrZGa5q
 3koHzvZq8RRhSDGs6+NPTs+emEW3qS7xK21LINx0G5I7kmCmEoP+adXxFbCl8RLWVWa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K61iKQKSs+OrqcUFMOs1tqEbYkL/JzmFJpzxpBoo9/Y=; b=R
 EYgNkcf2Wlgo2PD8Md+KSE+gT6LO6h6RuHnr6xbYi2CNF0BY1H4jAf9whgaVmNQqJixsIn6PbfZCP
 BqtcvgsBPqpjvUVgR4bbvjfEF3fkyFZh5ukxm0GfQllbA3THam7rWAJA3vSYUioc4ocXLokY6TiWo
 zUM1rItRQUUS3A68=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pgkhb-0000q3-2N for jfs-discussion@lists.sourceforge.net;
 Mon, 27 Mar 2023 11:07:52 +0000
Received: by mail-il1-f199.google.com with SMTP id
 n9-20020a056e02100900b00325c9240af7so5586596ilj.10
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 27 Mar 2023 04:07:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679915265;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=K61iKQKSs+OrqcUFMOs1tqEbYkL/JzmFJpzxpBoo9/Y=;
 b=Pdxx+Pfpj2zsbQDj3h4kIgb/mvTfZwO+tFMaIj87OoRMCeJP/cMf5ZZbLrnc6i5VKl
 Atx11HBOj67PfFbG4I76P4bZ/SWpGgpg33hib6Me7UQC1j2Sf2SI2mDyjWP0LJX5a6un
 ao3NTO/tLELWf5km0k+CxMLT3eRU1hS9wUXN7nXloBrKb6GZOc6PncUyOMxr4Lqsce0E
 C8op6n8pwzSMw/8SfugWJGRLps4Va1O4ZhQBFgydRvrHrXBCXx957DBk65D4ikuZDVeh
 Y+hSwPadHBoE7res4whUCeEIJui+JIUmE3fRmtwuykkB2bH2NaTTjla8Fizx4vZ9rkGb
 IicA==
X-Gm-Message-State: AO0yUKUXTPQka4ES35RBmH0fnS2WV64bB2NqqdsIRaPpBmaYfBTbYcju
 vmqE3sNzyhHqULilTxLER2/wGeL+kXkXIOUMV7scedJs33Sq5/k=
X-Google-Smtp-Source: AK7set/AbmrXI+T3WJykTpI+bZx/cHOnLM5/1nMiicru5dkQn8cykmtMfNsJKgxbNW4GPZytHAHHu3UV8vIgKnycTN17u0CYtPX2
MIME-Version: 1.0
X-Received: by 2002:a02:2208:0:b0:3ad:65e:e489 with SMTP id
 o8-20020a022208000000b003ad065ee489mr4526318jao.1.1679915265502; Mon, 27 Mar
 2023 04:07:45 -0700 (PDT)
Date: Mon, 27 Mar 2023 04:07:45 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a739a605f7dfc08d@google.com>
From: syzbot <syzbot+list0253d0b13abd2f4c7f49@syzkaller.appspotmail.com>
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
 Content preview:  Hello jfs maintainers/developers, This is a 30-day syzbot
 report for the jfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/jfs During the period, 3 new
 issues were detected and 0 were fixed. In total, 69 issues are still open
 and 7 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1pgkhb-0000q3-2N
X-Mailman-Approved-At: Mon, 27 Mar 2023 13:35:13 +0000
Subject: [Jfs-discussion] [syzbot] Monthly jfs report
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello jfs maintainers/developers,

This is a 30-day syzbot report for the jfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/jfs

During the period, 3 new issues were detected and 0 were fixed.
In total, 69 issues are still open and 7 have been fixed so far.

Some of the still happening issues:

Crashes Repro Title
3712    Yes   UBSAN: shift-out-of-bounds in extAlloc
              https://syzkaller.appspot.com/bug?extid=5f088f29593e6b4c8db8
828     Yes   UBSAN: array-index-out-of-bounds in xtInsert
              https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
483     Yes   general protection fault in lmLogSync (2)
              https://syzkaller.appspot.com/bug?extid=e14b1036481911ae4d77
326     Yes   kernel BUG in jfs_evict_inode
              https://syzkaller.appspot.com/bug?extid=9c0c58ea2e4887ab502e
282     Yes   general protection fault in write_special_inodes
              https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916
184     Yes   kernel BUG in txUnlock
              https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
143     Yes   UBSAN: array-index-out-of-bounds in txCommit
              https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
102     Yes   general protection fault in jfs_flush_journal
              https://syzkaller.appspot.com/bug?extid=194bfe3476f96782c0b6
74      Yes   kernel BUG in dbFindLeaf
              https://syzkaller.appspot.com/bug?extid=dcea2548c903300a400e
51      Yes   KASAN: use-after-free Read in diFree
              https://syzkaller.appspot.com/bug?extid=1964c915c8c3913b3d7a

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
