Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD679B0B87
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2024 19:29:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t4O7x-0000zb-3M;
	Fri, 25 Oct 2024 17:29:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3RNMbZwkbAJkLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1t4Nz0-0004Ia-TI for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 17:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/mtRFivprD+q70qS1YpzZnnWyJYglXFyE4OXmmBy+Cs=; b=LQ3SloR1K90xKyTlUDVekiIea7
 59KzWFRrXGBEDNuzUD+13GyB4vd+je930IJrOsG3i1sB2Z02SVlwAbQBBTykaa4ilp0q7xaR5oGuU
 jpk1P1nE/8LaP/qkR8Pw51l5o+z7B0aRBervAbfqjsrqP5ooQ92VKffJ2PY1fgfF/YX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/mtRFivprD+q70qS1YpzZnnWyJYglXFyE4OXmmBy+Cs=; b=I
 1GHZxtlXH3dvMQqVDi5XdCraUlxRJMfADDBxDqt7twtej9LXYOjM26wl5TNrkeqFKB6cjjLFFs4C9
 Dc4PS7MogX8K37MfGqmMIyLjWrgE64heavXTLg1NxeZEePhPp3Qne2p+fmih/d0nr5fxXzaK6ckBV
 OiKFkUinT7NTF53Y=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t4Nyz-000343-Vz for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 17:20:18 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3a4e52b6577so11606185ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Oct 2024 10:20:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729876804; x=1730481604;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/mtRFivprD+q70qS1YpzZnnWyJYglXFyE4OXmmBy+Cs=;
 b=H15pcv7Lx2ySsDQYS3eH0Re8Rf8OXWA90parZsIaSKpC+bB2oyngr1IoLpm36Zy5cQ
 9b7tyvAmsJqFkVHOpahYYbME1L64ptQul4zXUSgm+uLQZbj0ipdkaOmwxMoTdPUci286
 f5kFZrcSpZDxtYbp5T7uOXvpO62QOd4YGVWacs3Tkw7ePUV+O8bEPkXzab8dYG1fZbXF
 DUD20Gcn01VVo+e+JUzWJCSZI7gq82aR4Q7FW4Dq25iA8/EpT4RO/BbK3wujsb7uBH51
 9ANEV+3mJA+ZndCruH86pRcPGUyAdvg9AVY9AC008SeFdLVd7aA5HsTolUOwNbVR3k/l
 TXsA==
X-Gm-Message-State: AOJu0YyeaPTubPs3c+XHcgTMSmYJH+VkHklnFo7W8z/aNzUyOpaHRex6
 bluHJTI3z2NsLY8J/PoGgyMHZcnouLESXuNdarfvTyEFIEcFXxsMBJlLVBwE2p6QgH9ZeuT2YGz
 6bdcb8d4PNlPAtzZbKjVfUH3JcxVY2LVtLKnaYLnIBym1NqqTuXPm+wk=
X-Google-Smtp-Source: AGHT+IEnSA4DYG2UnQrJ775IZWFe0RTwXMN6mO+pGvTsTto5I/BPaUB8KP31Z3RuOf2ZYjFLgRGHN9mULujlGzuvlUEm22+5ZsgB
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1fc3:b0:3a3:b1c4:8176 with SMTP id
 e9e14a558f8ab-3a4de820c0dmr69655325ab.24.1729876804553; Fri, 25 Oct 2024
 10:20:04 -0700 (PDT)
Date: Fri, 25 Oct 2024 10:20:04 -0700
In-Reply-To: <20241025170010.19654-1-zoo868e@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <671bd344.050a0220.455e8.022e.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, skhan@linuxfoundation.org, syzkaller-bugs@googlegroups.com, 
 zoo868e@gmail.com
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
 Tested-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1t4Nyz-000343-Vz
X-Mailman-Approved-At: Fri, 25 Oct 2024 17:29:31 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindBits (2)
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
Reply-To: syzbot <syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Tested-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com

Tested on:

commit:         ae90f6a6 Merge tag 'bpf-fixes' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1274aebb980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fc6f8ce8c5369043
dashboard link: https://syzkaller.appspot.com/bug?extid=9e90a1c5eedb9dc4c6cc
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1254aebb980000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
