Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6829470A3
	for <lists+jfs-discussion@lfdr.de>; Sun,  4 Aug 2024 23:18:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1saicc-0002Wz-E0;
	Sun, 04 Aug 2024 21:18:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3w4SuZgkbAMI067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1saKQJ-0008Ff-E0 for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Aug 2024 19:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y+sAO584wltBhDlbpJdMDg1TUH0z7fhGbHYvAm/SN+I=; b=h7M/ga55vseD23EmmoQQAqLPDs
 VngzFXvr0scnVwrpi1oL/bfFj3+CpUy8Q+86nDFxD+Ei9TkhxKRTpLDQuzmQlQGV1j4tAnmxP/EsJ
 IZpqBPDtd9HYlLEIctEhr//VNeShFudsQArIDP9TaV7u1knlczTSmp+/bmiefFeJ1nTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y+sAO584wltBhDlbpJdMDg1TUH0z7fhGbHYvAm/SN+I=; b=d
 2OlnoVFTc8ccVvFggbVFWhZ6uBDa5sADVPPpIiTTTWW82agu2v6mWlEIREO286xmLLZodJ3HJ/QVf
 /CqtqBEOzNUxi5kwvZH6TgWDQjY/IlA+72BonD2RI1/gNR8GPyhWtLP4bEdeDo535/60NcUbhSXk8
 uqcAbN0nIuS4d3M4=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1saKQI-0004TA-6W for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Aug 2024 19:28:14 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-81f8edd731cso1307648439f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 03 Aug 2024 12:28:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722713283; x=1723318083;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y+sAO584wltBhDlbpJdMDg1TUH0z7fhGbHYvAm/SN+I=;
 b=g+DnMDO0afZqESoGveYdKDhyY/cCHvHXbN30wIdVRtU53HMX+K7CyDJicKZeOR6vE8
 QtHsTJIESuR+XPJyWf4ywk+oFQE4yYWHXQBNTUyjKsPo2A+PBB5z72jOpasr8uCmGtE4
 UFtKE5JVzNTpwVIoTOLDgCqFAmBxAhjN1hNKkhvLiAijepQB0rgRgoiusHQAvB1m5l7g
 GVXyD1s1qXxIponMj/FJBEZr1PdaxYtm+gKXvXX6CnNuDwUfjjisTR8c5VUP7bgE1TnA
 ty5aFf4AYxgzteq7v45cmQln+mtKQ3jh4733DmHxSaK16bIaO3d7/8gHFTqKdQld4E0C
 myRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVupP93Q8sv/pyWA3i0ngeutyj/BHMew2pmT6KLZaQ9Z/v5ROP5eRsn2D4GOgv2OeoqDzs8fDkOfjg+AmsQ9DBajPp2JVe6+z4iRqHhwoN1RkKRt4=
X-Gm-Message-State: AOJu0YwCaRd9jaamu+06PUrEoh+NxWrmlW7kc3RI3o/ESVBKLtKt67MB
 2ly+t0IX/RjyNg8ryHpf17er6SPRJ98a/xvWF55McqwVRwZ4dBfWYMWJUhHaS6lTLLGcF8uUJlH
 TWyeXFp0qxJ14QBx7CLG8/sLz73ISLp22hyP85Zsh4ujkI2nNFJ773m0=
X-Google-Smtp-Source: AGHT+IGGy8zGTOF8yOHJyotlAgw8mXOQb6CSan6vq3o0LcTlSZskIQelzk75hM50gZLIOEytTwivlK3uyYM3oPhT6CiTyfnesXl/
MIME-Version: 1.0
X-Received: by 2002:a05:6638:8717:b0:4c0:838e:9fd1 with SMTP id
 8926c6da1cb9f-4c8d56b0085mr303432173.5.1722713283387; Sat, 03 Aug 2024
 12:28:03 -0700 (PDT)
Date: Sat, 03 Aug 2024 12:28:03 -0700
In-Reply-To: <000000000000d74cac05f1450646@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004e70d5061ecc718a@google.com>
To: axboe@kernel.dk, brauner@kernel.org, damien.lemoal@opensource.wdc.com, 
 jack@suse.cz, jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 kch@nvidia.com, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 6f861765464f43a71462d52026fbddfc858239a5
 Author: Jan Kara <jack@suse.cz> Date: Wed Nov 1 17:43:10 2023 +0000 fs: Block
 writes to mounted block devices 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1saKQI-0004TA-6W
X-Mailman-Approved-At: Sun, 04 Aug 2024 21:18:34 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: use-after-free Read in
 release_metapage
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
Reply-To: syzbot <syzbot+f1521383cec5f7baaa94@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15d6414b980000
start commit:   4d6d4c7f541d Merge tag 'linux-kselftest-fixes-6.4-rc3' of ..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=94af80bb8ddd23c4
dashboard link: https://syzkaller.appspot.com/bug?extid=f1521383cec5f7baaa94
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13385bd6280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11c11186280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
