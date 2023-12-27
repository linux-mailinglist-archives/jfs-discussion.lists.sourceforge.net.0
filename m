Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B47281F405
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Dec 2023 02:58:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rIff7-0003qP-3f;
	Thu, 28 Dec 2023 01:58:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3iZiMZQkbACAOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rIbYd-0007Bt-Hx for jfs-discussion@lists.sourceforge.net;
 Wed, 27 Dec 2023 21:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pbQTOD/Ltd9C2PJIubwu4JdPZB/ZwoLzMfKrTF30tQM=; b=QK7fUmUFhmnQPej0SozMOThkYF
 10/+eZNq9oQdAfKGlfgZ8MZpR8qjZmDEK0OdLSgv6bnAHe6iU1kwnitCyt+eriuxKy1w/ZMzSiHGX
 yIsK7aRS/YDcWqcTO1rgTnWZ9SHX77Y8nep4sMRKD6dOefI2SY4aVACDWy77KeOG6bz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pbQTOD/Ltd9C2PJIubwu4JdPZB/ZwoLzMfKrTF30tQM=; b=Q
 AWa8QNoqwIypmOdqhX8QpSdM7/hrfO3xGGoQqUiHDlCclP/R+DHpWSg96EPVaUJcom6Xy+MuVkyRu
 Yq0nlBUs8nXy1vSMA1g+Wj55Qeo6yZSF+lgu2hlpvpC3ZzLwj7mHygUdIg2UjzFHHNn7/8vQwm54D
 rkoPNQLV7kQ6jXPo=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rIbYa-0001YG-IO for jfs-discussion@lists.sourceforge.net;
 Wed, 27 Dec 2023 21:35:20 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7bad62322f0so367141739f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 27 Dec 2023 13:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703712906; x=1704317706;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pbQTOD/Ltd9C2PJIubwu4JdPZB/ZwoLzMfKrTF30tQM=;
 b=XqlA0QbKXOeIJPgVUzMyfr41EDr9Sxynnqrb6Ixamc/8giBnYxY3S7ACK0ThNtv9pX
 EFcswQDFFM+aRLMO8UdrD0/HtKAI8ujjYZZTE05vfCVAZzrtALgSk7n+8ap6MoDbmJ0F
 lIiUxU4pURYEQk1sNv99LQNJkbBkdNwY1Xgr5uiBO1y1HQgam4gzr/gBjfac5L4LyWF2
 AriaITmsq3QPjD440ScDLOQMEQDE5qfUf17pgKDk9LEaFZcp03b1npSmfJHi6Ga0Y1A9
 VtJz9geJsOgZhmOpfutRX5tgqCdML4jgeBZWq1RNp1bLzbEMRhfFReJpEJ3HeH3b10eQ
 Juiw==
X-Gm-Message-State: AOJu0YzgxprhZ0EOzYCJ5RNX+5+OC+GOaWsFpKQMIOg1IErUNPEJFVT6
 k1vFAbXaxoQQaEMKY/eIWbyW9QmvKoKXUChp6lK+W1uk6+BR
X-Google-Smtp-Source: AGHT+IESHqvKiy/A8nyx+QaDLdqzH3R119TI4RChAvP2HWtKKFejDSNQtJ99zWFHavl5JUAy63E8bzvuHwUfhDOcGBA24lRJ6556
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c28:b0:35f:d4dc:1b1d with SMTP id
 m8-20020a056e021c2800b0035fd4dc1b1dmr1007441ilh.1.1703712905942; Wed, 27 Dec
 2023 13:35:05 -0800 (PST)
Date: Wed, 27 Dec 2023 13:35:05 -0800
In-Reply-To: <00000000000046566805e997132d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008edf40060d8492e2@google.com>
To: brauner@kernel.org, dave.kleikamp@oracle.com, ghandatmanas@gmail.com, 
 jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 liushixin2@huawei.com, mirimmad17@gmail.com, mushi.shar@gmail.com, 
 nogikh@google.com, osmtendev@gmail.com, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 a779ed754e52d582b8c0e17959df063108bd0656
 Author: Dave Kleikamp <dave.kleikamp@oracle.com> Date: Thu Oct 5 14:16:14
 2023 +0000 jfs: define xtree root and page independently 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rIbYa-0001YG-IO
X-Mailman-Approved-At: Thu, 28 Dec 2023 01:58:15 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in xtInsert
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
Reply-To: syzbot <syzbot+55a7541cfd25df68109e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit a779ed754e52d582b8c0e17959df063108bd0656
Author: Dave Kleikamp <dave.kleikamp@oracle.com>
Date:   Thu Oct 5 14:16:14 2023 +0000

    jfs: define xtree root and page independently

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=104e23c9e80000
start commit:   830b3c68c1fb Linux 6.1
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=1b610daf3807bd5c
dashboard link: https://syzkaller.appspot.com/bug?extid=55a7541cfd25df68109e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=175d3e57880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: jfs: define xtree root and page independently

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
