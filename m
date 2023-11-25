Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF47FBF41
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Nov 2023 17:35:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r812W-0007jZ-2L;
	Tue, 28 Nov 2023 16:34:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3YoFiZQkbACEPVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1r72LK-0003Bd-4B for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Nov 2023 23:45:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P8irKbRQf4ulqP864AaN8Yh83B8c2j63BxzIEMPOYPM=; b=eTh8F0Al0NOqDTAloTIcQlw8Ck
 20mV2KOBSkPgmImXLkgz7g0kEBIllhb76qwsFmy0+4aRnthlbRoFSPrBJCaV7VnXog731nYT5eQ1/
 16S0MFHRI23DshgQA4Ag21nSqeOLsGwiIVbAb/p45n1qk0NBys7Knuw3plLlfrBg263s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P8irKbRQf4ulqP864AaN8Yh83B8c2j63BxzIEMPOYPM=; b=d
 vElJp5hktRbLWpqJUll5vN6vOqi6vrmo9En8UrBke/BenxVwM8wMNwAZ4GGXgZ9uQITzer2ButsY4
 PcldxIH1U3fPk8jUlOgKQ3PMdet6bLwSc/+8x/YLeuJzBB45naOW80vtLXdDSh+SG1s16cGkKeqqX
 D+MdFx3ucXCIy2Nk=;
Received: from mail-qt1-f197.google.com ([209.85.160.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r72LI-00FW2O-9C for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Nov 2023 23:45:46 +0000
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-423a64bc494so8017371cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 25 Nov 2023 15:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700955938; x=1701560738;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=P8irKbRQf4ulqP864AaN8Yh83B8c2j63BxzIEMPOYPM=;
 b=Fup1yTfkBF2ImcEwTOij7dSw0UeN+mnOC0PmP8YbjepuJaXbM8rv3BYAQ/l/jIClDx
 wgzADpFw0TT6gMR08p1jGjaK6MNa7BRJ8YJPjQfqGuD6D4L/3e2gXVUzX7Ue4wbdAIQQ
 il/zQhwhO64q0Hai2ob+1jL72coUx92PInJlqEnMdWcr7adXZH40WZL1zDCI7DFdzk3A
 YFs+LXJCBTW5nzA9XZBPRUFhe+2m0QjzKsvYk1DgcVB98s08IOKmxfspIsYvYKM7ckuj
 BCNGeypoQngBQjIh3to+rvcy1tcjb/5TvhdBAg1CPaMjNg6eWC4nunU9dTQ4wk80T4hK
 f/WA==
X-Gm-Message-State: AOJu0Yzmq+/DGyuG5aS/i+7TiBtDiGLRJAzCljJwTlEikxI4PKBHoN/E
 GmxLoDDnsHAMBSY3yKEU2UI8N7ngpCzU29ivvzWMeJ/j2JNo
X-Google-Smtp-Source: AGHT+IFetQ4Ea4jYYNu4u1E8cYyU5EKkb9XFCyMuTXo4Yo84ERnycivmlcdAMjCkdweSpyAyN58iIPW0zBpeCEXnglUtqHcV13Dm
MIME-Version: 1.0
X-Received: by 2002:a17:902:f68e:b0:1cc:20dd:8811 with SMTP id
 l14-20020a170902f68e00b001cc20dd8811mr1631703plg.5.1700954466756; Sat, 25 Nov
 2023 15:21:06 -0800 (PST)
Date: Sat, 25 Nov 2023 15:21:06 -0800
In-Reply-To: <000000000000459c6205ea318e35@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c52fdb060b02522a@google.com>
To: cuigaosheng1@huawei.com, dave.kleikamp@oracle.com, ghandatmanas@gmail.com, 
 jfs-discussion@lists.sourceforge.net, juntong.deng@outlook.com, 
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, syzkaller@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.197 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.197 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r72LI-00FW2O-9C
X-Mailman-Approved-At: Tue, 28 Nov 2023 16:34:17 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in xtSearch
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
Reply-To: syzbot <syzbot+76a072c2f8a60280bd70@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit a779ed754e52d582b8c0e17959df063108bd0656
Author: Dave Kleikamp <dave.kleikamp@oracle.com>
Date:   Thu Oct 5 14:16:14 2023 +0000

    jfs: define xtree root and page independently

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16eb55af680000
start commit:   72a85e2b0a1e Merge tag 'spi-fix-v6.2-rc1' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=4e2d7bfa2d6d5a76
dashboard link: https://syzkaller.appspot.com/bug?extid=76a072c2f8a60280bd70
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15802088480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: jfs: define xtree root and page independently

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
