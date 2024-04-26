Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DABAD8B2E64
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Apr 2024 03:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s0AcC-0001F7-Mc;
	Fri, 26 Apr 2024 01:43:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1s0Ac6-0001Em-U7
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 01:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HVwkjenx9A1lf6NBB9XvYk1sKkeGhgxNJO17SZNMT0k=; b=fvYKzdq1vyTEER4FhWYZ75zDUT
 nAcI1sC4/MrUo17bGgjU5X140IYy48Jby+E+ouNC8Ps/lT9SHbw5MQZUyh611TWaO8b/hb4j/Nj6t
 w196iukB1wy0Jt9VXpGXUYdnALSh1eMhD4m0gS932B89JDnzk4hpcgp2aHW7Pzcb6nbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HVwkjenx9A1lf6NBB9XvYk1sKkeGhgxNJO17SZNMT0k=; b=Q7Bt2c1c6tg7Lj/EwG69yDbjGQ
 90zhrl6lT+PLeVayXxMi40jpzdIJxoBFqO7fzfDVNnwXYdBC5GuwX6KYK1taiMzD3QCT4RsMLG7KR
 YMPnwZk80ilUzHX3JEcmayySAiePf/XIuCnVMuaTXbl5y2xTUmuQWAdGKCIXrlJp3pAk=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s0Ac4-0005eK-Rq for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 01:42:57 +0000
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-3c70a55988dso973588b6e.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 18:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714095766; x=1714700566; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HVwkjenx9A1lf6NBB9XvYk1sKkeGhgxNJO17SZNMT0k=;
 b=BQyiLevBDFWyrmfDQa0veXbja5rTIFsFly6BI+OQByGicqWfFsfCLP+lSTy6SyKgdi
 eXEXlSLtIJ3nzqkOVB5h3KTksALXQg9E8RkJCrXc2sLq0caK2U2duTC+t004nUgSSrof
 kTOwr9vwotOfIxPtAC2MhY07EMP09qlcy7fbEqdYx3wn1FSZuwe6A2vqWEB1eKEjy3zG
 dv9HFBKHANK2RiGgbqVgYK9Ew1SOMwFczr/QjLOH1fxHBf42wYGfm0IF/2PTBpUhWLVB
 s/wVVsUhBH+nD5hkw5RZx0XCWj97iOAOBVEc7LT/lq0t1hcVfAKoP6HeCrpa+q8TDVbo
 qIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714095766; x=1714700566;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HVwkjenx9A1lf6NBB9XvYk1sKkeGhgxNJO17SZNMT0k=;
 b=ELMT8FNtAqY5hCQQKuwTj8qES5L6EaO5D/XcJufkYh9cvvbMbY8mIoALcs3T/nYxsu
 2zJveLyBKUNaTYpHHDlMkeGo3DfbMzHPgPF6OxcO60VBRQVmyKaQGFNPMaPxrK+Z19Ob
 7DygtZL5Imn9WGXQKOSqBLftdPDCHVGvtKpyv7JR4UA+5Prls7zKGw7Lk+j1d7fvaMRX
 s6aOAAz3WHpLnlRl2ECgYui+d+R0nrY05jE+kyQg+2q09Blu1vxXdMyyhcFFwO6Qa9rQ
 nyNit+nuwNTMGmPpSFsx5RlyAuz/dGkDX4u33FnE0bU7Fnvf9ed6DT+6exIhgdQwbV1F
 SxIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYSExAT20BYE6V1/vrNwItp8QkuHrIkvYD1obI/Q+tuVKGPJy7VKo0SYeTr5FtxvlC6iLOuli+CC0bruMcT6SBDjxnH/UUTnnqAJNozs7zVtmHDVA=
X-Gm-Message-State: AOJu0YzMDVtMzOCCNyKjYvjnc/9fEndL37ut1qxyZrcVLg/uOYn4+0N2
 Zg6p5nJ3O5PuzUqLgVwGOf+beLule/EK6hYujqv8/UQxeYmrX0k8
X-Google-Smtp-Source: AGHT+IFJ2YQlOAQva6WMbhQM5ztMAWWdfHO92djEjAbTw8X7PtnS0eyTm17L8xvnS61GMAoX5Ak7ew==
X-Received: by 2002:a05:6808:6343:b0:3c7:12d0:9bdb with SMTP id
 eb3-20020a056808634300b003c712d09bdbmr1518756oib.23.1714095766509; 
 Thu, 25 Apr 2024 18:42:46 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 s17-20020a056a00195100b006e664031f10sm13768259pfk.51.2024.04.25.18.42.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 18:42:46 -0700 (PDT)
To: willy@infradead.org
Date: Fri, 26 Apr 2024 10:42:41 +0900
Message-Id: <20240426014241.51894-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
References: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox wrote: > In your earlier mail, you said the
 large value was found in db_agl2size. > If the problem is in agstart then
 diRead() is the right place to check it. Oh, I was so distracted last time
 that I wrote the explanation incorrectly. I'm sorry. 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.167.172 listed in list.dnswl.org]
X-Headers-End: 1s0Ac4-0005eK-Rq
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Matthew Wilcox wrote:
> In your earlier mail, you said the large value was found in db_agl2size.
> If the problem is in agstart then diRead() is the right place to check it.

Oh, I was so distracted last time that I wrote the explanation
incorrectly. I'm sorry.

To explain it accurately, if you pass a very large value to agstart
and set the value passed to db_agl2size to be small, it can be
manipulated so that a value greater than MAXAG is output when the
"agstart >> db_agl2size" operation is performed.
This results in an out-of-bounds vulnerability.

And the final patch before is the one that fixes diRead().

Thanks.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
