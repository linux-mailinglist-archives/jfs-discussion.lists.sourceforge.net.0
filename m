Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C196D1065
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 22:56:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phzJm-0003G2-OZ;
	Thu, 30 Mar 2023 20:56:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <30uYlZAkbAF8PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1phyDE-0007G9-2t for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 19:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5v1vNtKpcx2RQzSR6kq5eMD7prx8eXvuLXDx4S7CMpk=; b=Bh4M9HmDyb4LjGXS8lO5iTDX4p
 sLHunL6dqZyEJC0tlVt7q65CYjTPgIr411p/JZ4AByk9/5MMwyzVJLL2vWSgu6nvAs4D7JDWc/oVJ
 N7qc6JIPghzyFbJUOdnguRbpLnKwdUW6bDzBb9x5NfxVbYfuRPQpok5M4cV6SxTklZl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5v1vNtKpcx2RQzSR6kq5eMD7prx8eXvuLXDx4S7CMpk=; b=h
 5ewGrTsrhuwY7gKoAYmqgaLjiNVJkmF7ePCNEPwIiAu/nmsX4tkj1uTofdXnuVxLvUlCRTXg5sNe5
 lL/6mzcjaBs9QqVazk+94YqWqC8/BbxC3vyXHXJlOjYWHNL7Ej8qkXMzSc4dpBcohhDzUHmYENv8s
 cqXrzCcKqCQl9L+U=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phyDA-00A3Kp-0r for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 19:45:31 +0000
Received: by mail-il1-f197.google.com with SMTP id
 o8-20020a056e0214c800b00325f0a48812so10519372ilk.13
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 30 Mar 2023 12:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680205522; x=1682797522;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5v1vNtKpcx2RQzSR6kq5eMD7prx8eXvuLXDx4S7CMpk=;
 b=R/idvN7T4z1ue6Qkg6NoNpDFY/5ufNcRSOFSwMqQ2TvwccVSIV1MKKX02I5jVEdH1X
 Enir4V0NO6yXYZnXJxeHgzBuOwJ63zwYRIbJSikhLFO30K4ABk+hwTr3+lJd0XHMoGGi
 XI4jYgQwBsOkjJ0tKrN+O26EE5uaUGAEoHwAo3KvAL2wbc2afBxNJ8HkENUF+QHiC9UD
 ta5tdeA0Lx/iA9Ohh4Du7DR8UyH46J4MLZmCrDbx7aljG3VIeV2phy8w6AbgA2SIuqsn
 GAFPt7F7WDqeldfmJwEzR5olhJ4HcA1gIGC3mtXaFI/iLydcqTuZD8ScgV1mcdrCPv1L
 Bjnw==
X-Gm-Message-State: AAQBX9fsC/WaB5m0X3hlkdiOiezBVJcFBbjPzPIomsSwluFANNG52D0p
 IZ5XJ5qneFUe7PFv5kjibkTBYw6Il8UiOCcbCmM7O0vhp4zr
X-Google-Smtp-Source: AKy350b4D4mKslDZ9T3BlZq3TqXJNY6nmfkJGCdtKDX3dN13u8lKrd4zJzVeTy5Ayvw6jeWZ1qHOBpMkGek6RPM9Xj0bRsM/O2cI
MIME-Version: 1.0
X-Received: by 2002:a92:7603:0:b0:323:cab8:3c0c with SMTP id
 r3-20020a927603000000b00323cab83c0cmr12585397ilc.5.1680205522304; Thu, 30 Mar
 2023 12:45:22 -0700 (PDT)
Date: Thu, 30 Mar 2023 12:45:22 -0700
In-Reply-To: <00000000000093079705ea9aada2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004ee9b405f82355d8@google.com>
From: syzbot <syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com>
To: dave.kleikamp@oracle.com, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 liushixin2@huawei.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 fad376fce0af58deebc5075b8539dc05bf639af3
 Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
 Date: Thu Nov 3 03:01:59 2022 +0000 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1phyDA-00A3Kp-0r
X-Mailman-Approved-At: Thu, 30 Mar 2023 20:56:20 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindCtl
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

syzbot suspects this issue was fixed by commit:

commit fad376fce0af58deebc5075b8539dc05bf639af3
Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Date:   Thu Nov 3 03:01:59 2022 +0000

    fs/jfs: fix shift exponent db_agl2size negative

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=146d74a5c80000
start commit:   b229b6ca5abb Merge tag 'perf-tools-fixes-for-v6.1-2022-10-..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=a66c6c673fb555e8
dashboard link: https://syzkaller.appspot.com/bug?extid=7edb85bc97be9f350d90
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16d5817a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d68cde880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs/jfs: fix shift exponent db_agl2size negative

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
