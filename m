Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED1FAF6026
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Jul 2025 19:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wH+WBhxuAKk9CEJJoYL4JeGLnolKUvMt4uQJYsSbWP4=; b=SaeS0kBb/hL7gxA9VPdd7TRy6v
	3Q3mpzkvA9Px1gaqrQUWSB//EiwOP+2y+gHXXesb/f3KkLwIbLVAysmlpF3f2h7WAwxS7wbEzxNWn
	RU4JU2xDRIzSQaCFqLygMk+y6BKsufh1apBPq8RWeeVzVqiKt02321s+LDUDbr/sONKE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uX1P8-0006zf-Bv;
	Wed, 02 Jul 2025 17:37:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wwzcherry@gmail.com>) id 1uW24N-00048D-Vr
 for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Jun 2025 00:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p9XZ6O/Nt+QUSPcvsamlkO+yUnxoDi7UkAqnvN9y32g=; b=V2wsBLYpBP0Y27A/qropENmYFi
 k3A/VX+KoE9oi6l/4qppkdinPPoNmZouxHAkfCc7dLr0bpuF/ip+26l3Wfta+4OLu/jErgeW2Ep9r
 DabwPVn36f7HVyG++GeTKGzjUGv6NGNGIFVFj0va2nE6eqbeakckKWB27r1pfEZUsuK0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p9XZ6O/Nt+QUSPcvsamlkO+yUnxoDi7UkAqnvN9y32g=; b=M
 KiU37n1f/C+Ju8KQviljckyTUAiJYT2mo3vRh8CBYPEtTgiki7PSmKtdCJ9eJpdwsaMEw0LVpiaNx
 +mnt6xFBeIsK3sjuoi5g+ircUtAu0Dh09XgYbg7g4lUrakcsSYSbOcuuOdGqHbDwUH5nwSYOMtfIa
 dNG/BX/b6liOAmV0=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uW24N-00016P-If for jfs-discussion@lists.sourceforge.net;
 Mon, 30 Jun 2025 00:08:23 +0000
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-555163cd09aso1046002e87.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 29 Jun 2025 17:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751242092; x=1751846892; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=p9XZ6O/Nt+QUSPcvsamlkO+yUnxoDi7UkAqnvN9y32g=;
 b=Q1qhg0wU0ecxknlUaVqvj/W2B+CXCUkC77DSx/FpFNlg0hsYGFTjXjkAp5NeicDrxO
 JBVA6nPaIAI9MSds+bEwf6eOvXLPdZmyjqlBA4Bd1z8FqkgtWgv79+Wkn2kyUGyKX4yH
 hFYCfFN4ujAvxIm8Nwv8Vt11TxOZMoC0yGOPN2wpt4XDWnGYu0AeDPHteUO0ul/bQav+
 I0GYSfbe4g/6iKhic4Cipr6PxkKb/6omajc0oU0mK9KGCCk35mwhd3WzdWcDw1uXN7tj
 mg5xZW3XK5/7DmlaIxQuF2ueAcFNTw36xmT3rPEFe4bN1kWJv42jKBufWwfNBsQ6VUgX
 phKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751242092; x=1751846892;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p9XZ6O/Nt+QUSPcvsamlkO+yUnxoDi7UkAqnvN9y32g=;
 b=PszXPpZsZES0mL0ZvtaSM6YAtK4iGjY1k2JDrIVIt2h6XUeOWbBChRES4Jn/eaq02x
 m+fBG0OJY7/Jr7qHqWRnpFt+YU8IdN/qeO2umP8MKVir1DO6X87dYBglnHTzNvgJhxHM
 A5MdIEkH/ggQ3KdZx9cIsuK6HqpR42mTW0Z84g/0DcgkqWy5OHYyP7bCjN1odbUcqcze
 CVYnfiVmQsMW7whVAWigLWbYGiJAYZZwUBRWKZk/forII8bOS4gKzp0ZlYc0VO5vdbD0
 +5GNbD3JVzcQbmduri1jTsDRfTjTj8SmZa5Z9lqTNZSCD9SqKQKrnR9AYq9IH6Y7UXcI
 PTkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7jFjHLBB3gK1olk5kSnoyuP/AEtMBzfj50buiYMARXMDGldGux233GvUlCRNrC0J7P79sc+VyiT2cnb0jFQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzqoyhvJByZfEoTRwxor3ARCVMAct2TIR5FOgGvIJhc19LMlJZ9
 cVNAtCpmIOXDpEwS5B53CkX4tiXgMSdtKtyt+rCslbhlGkQqoGy1W5q6RNNep+VKaGqOpCGYYd7
 Q1JZrJGHdQl3U9Ev5xp5vDq4LOdORAm8=
X-Gm-Gg: ASbGncv7dnF//KBPHCXaDJftit5DGlh8bHQRvyuSizRG45OCNx/7uokZm4izpVcdI/R
 MQF8brP7Q435PhquX8aj72DGiAROXRQnnzMMLMtsY0P8FV0PeZIZQrQd8KZpc8YpSe/F4gMV7q4
 CANvEv5EvbZqeIPR84WhSQasMqxpTTYMXen7BRNKal8S8llTvn5Oa3MlD/
X-Google-Smtp-Source: AGHT+IGrMXuEPB2+lLX8mXS22MPuuOZtgrTT7tFe2fEsrVMrS5+H5PfC5cHW9Jxd+trJqSyhXCGU+FLLmtPN+N0yVQc=
X-Received: by 2002:a05:6512:33c2:b0:553:a740:18aa with SMTP id
 2adb3069b0e04-5550b81771emr3529143e87.22.1751242091684; Sun, 29 Jun 2025
 17:08:11 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 29 Jun 2025 20:08:00 -0400
X-Gm-Features: Ac12FXxbiq_ebVld-qBZIAIkKLoQIy-mnBthZzRiLvl4Gv90NMW6DSb68h_pRG8
Message-ID: <CANrG6LvQbYqHkZSUuM-OqzVE-Gj1UwE0M9YiEXWU-keTVGmQuQ@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I found the following reproducible issue on the latest
 kernel. Kernel version: Linux 6.16-rc3,
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/?h=v6.16-rc3
 Kernel .config:
 https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.1
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [wwzcherry(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
X-Headers-End: 1uW24N-00016P-If
X-Mailman-Approved-At: Wed, 02 Jul 2025 17:37:53 +0000
Subject: [Jfs-discussion] kernel BUG in jfs_evict_inode
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
From: Vincent via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Vincent <wwzcherry@gmail.com>
Cc: syzkaller@googlegroups.com, meng xu <meng.xu.cs@uwaterloo.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

I found the following reproducible issue on the latest kernel.

Kernel version: Linux 6.16-rc3,
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/?h=v6.16-rc3
Kernel .config:
https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc3/.config

Reproducer: https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc3/kernel%20BUG%20in%20jfs_evict_inode/repro.cprog
Bug report: https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc3/kernel%20BUG%20in%20jfs_evict_inode/report0
Issue Position: fs/jfs/inode.c:169 (see Bug report)

Other materials are also in the folder:
https://github.com/AmoyCherry/syzllm-bug-reports/tree/main/bugs/6.16rc3/kernel%20BUG%20in%20jfs_evict_inode
Please notify me if you need more information.


All the best,
Vincent


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
