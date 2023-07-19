Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9664B759D24
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Jul 2023 20:17:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMBja-0003i6-Lx;
	Wed, 19 Jul 2023 18:17:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35CK4ZAkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qMBLu-0003zU-LX for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hiRiXJW3cvp7FSsZTUGSxXp2M76eBloK3LBfm2fpvAw=; b=GQ1vsKXIaC8YsI4gIr0Kl9MwSb
 ybRWpg4Pg+qkxP/O8i933RkKDbo3uQvwcN5HZ8AxrAU0ztm0C5P5beyAxluuZdriJD7dHn7XcAO0C
 TfEiWVHTR0W50OZkGBh+9bMDZk1+uS7ViYRlGbTPY+mo3roQnRTpl9sXOcN0u5TW3/Go=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hiRiXJW3cvp7FSsZTUGSxXp2M76eBloK3LBfm2fpvAw=; b=A
 MGmXa1d+72nqilAp3csFSVoDQSFxcSre82CK5U9CM139aYiDUzuakUfY6DkkZdxZywgn+NHFGat3R
 nsUoy+rQ714OeLNa2xls8cgsEHDFr2lCM3RS1ipyXjz1it4TkP9P3Pq3vVz42QuMqwyGEUHFWDqsA
 t8Kva/4q6XFP7BiU=;
Received: from mail-oi1-f200.google.com ([209.85.167.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMBLt-00DJly-Tk for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:52:43 +0000
Received: by mail-oi1-f200.google.com with SMTP id
 5614622812f47-3a36b311b5cso11777252b6e.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Jul 2023 10:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689789156; x=1692381156;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hiRiXJW3cvp7FSsZTUGSxXp2M76eBloK3LBfm2fpvAw=;
 b=cvh1iglLrGqkHHe8kpHxJZSbfuQPfXxnys3zAqPtAdOXRxMx9JWtK71O97s/t9AH1y
 uSOMtiLs5EyK8qy2prdO5lahDMZqXnTvXfWSwNdM7ySn5NSdvtfZ/eKlMbntmmmM5IdF
 OePrR2HKAqaFQ0At8XLMCz56LsuZzGzdBxIpaxgoL+cqYuTTyluiXQxDu5tT5oD4uEyH
 /Y+lYHgLTRi7C3gEuUYkRV0Kwjr1dMmc6Wx6EkftK6GWsgW3x/L5/4CP9vWm5qnFFSjv
 NFjM69j/WNRPjHi0UvsedXUBtgb5gqdEL2GUYwZWhxQn9dcC/Lihfa0H6huP06m9gb80
 BAIg==
X-Gm-Message-State: ABy/qLZUwsarBhqYq8NL0krbqzz5Z9PyG2ku8GmPIW70qfzPCDXIvQxb
 MtdA/h0gOUqWtNtf55efHYbpXZ8AL0o3+mzazV16pZRuYr9z
X-Google-Smtp-Source: APBJJlG5ugVl7dPPwQXLSskdx//wo3Cxwyt6xyJHDlFhfMqOYOoEiwYraGQnxOCt15oVej8GHXbJ8Vy/Q7WgiHAYGdyqnMHSkz9m
MIME-Version: 1.0
X-Received: by 2002:a05:6808:f0a:b0:3a3:644a:b55 with SMTP id
 m10-20020a0568080f0a00b003a3644a0b55mr30865038oiw.4.1689789156368; Wed, 19
 Jul 2023 10:52:36 -0700 (PDT)
Date: Wed, 19 Jul 2023 10:52:36 -0700
In-Reply-To: <30f03978-3035-a28e-c097-112036901bcb@nerdbynature.de>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000069291b0600dab2d6@google.com>
To: broonie@kernel.org, dave.kleikamp@oracle.com, davem@davemloft.net, 
 edumazet@google.com, jason@zx2c4.com, jfs-discussion@lists.sourceforge.net, 
 kuba@kernel.org, kuninori.morimoto.gx@renesas.com, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 lists@nerdbynature.de, netdev@vger.kernel.org, pabeni@redhat.com, 
 povik@cutebit.org, syzkaller-bugs@googlegroups.com, wireguard@lists.zx2c4.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-and-tested-by:
 syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.200 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qMBLt-00DJly-Tk
X-Mailman-Approved-At: Wed, 19 Jul 2023 18:17:09 +0000
Subject: Re: [Jfs-discussion] [syzbot] [wireguard?] [jfs?] KASAN:
 slab-use-after-free Read in wg_noise_keypair_get
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
Reply-To: syzbot <syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com

Tested on:

commit:         6e2bda2c jfs: fix invalid free of JFS_IP(ipimap)->i_im..
git tree:       https://github.com/kleikamp/linux-shaggy.git
console output: https://syzkaller.appspot.com/x/log.txt?x=172aecaaa80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f631232ee56196bd
dashboard link: https://syzkaller.appspot.com/bug?extid=96eb4e0d727f0ae998a6
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Note: no patches were applied.
Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
